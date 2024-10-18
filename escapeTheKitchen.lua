pico-8 cartridge // http://www.pico-8.com
version 16
__lua__

-- linear interpolation function
function lerp(v0, v1, t)
  return v0 + t * (v1 - v0)
end

function _init()
  music(1)
  tilesize = 8
  player = { x = 3, y = 50 }
  player.speed = { x = 0, y = 0 }
  player.collision = {
    size = {
      horizontal = {
        width = 10 / tilesize,
        height = 9 / tilesize
      },
      vertical = {
        width = 6 / tilesize,
        height = 13 / tilesize
      }
    }
  }
  player.anims = {
    standing = { 0 },
    falling = { 4 },
    jumping = {2},
    walking = { 32, 34, 36, 38, 40, 42, 44 },
    crouching = {2},
    flipping = {6, 8, 10}, 
    reverseFlip = {10, 8, 6},
    bounce = {12}, 
    upsidedown = {10}, 
    death = {73, 75, 77, 79}
  }
  setanim(player, "standing")
  updatecollisionbox(player)
  screensize = {
    width = 128,
    height = 128
  }
  mapsize = {
    width = 1000,
    height = 1000
  }
  
  trophy = {x = 25, y = 185, width = 2, height = 2, animatePos = 96}

  -- pixels of downward speed applied each frame
  grav = 0.5 / tilesize
  maxgrav = 4 / tilesize
  
  -- horizontal movement speed
  movspeed = 2.25 / tilesize
  
  checkpoint = false

  -- jump speed
  jumpspeed = 4 / tilesize
  
  -- jump buffering
  jumpbuffer = 3 -- number of frames allowed to buffer jumps
  jumpframes = jumpbuffer + 1
  wasjumppressed = false
  bouncing = false
  bounce_counter = 0
  flips = false
  reverseJump = false
  gameover = false
  gamewon = false
  done = false
  enemyTicker = 0
  enemyCount = 0
  gamewoncounter = 0

  -- jump grace period
  jumpgrace = 3 -- number of frames allowed after being on the ground to still jump
  fallingframes = jumpgrace + 1
  
  -- screen bounding box beyond which the camera will snap back to the player
  camerasnap = { left = 40, top = 16, right = screensize.width - 40, bottom = screensize.height - 48 }
  cam = { x = 0, y = 0 }

  crouching = false

  enemies = {}
end

function reset(checkpoints)
  tilesize = 8
  if checkpoint then
    player = {x = 300/8, y = 35}
  else 
    player = {x = 3, y = 50}
  end

  player.speed = { x = 0, y = 0 }
  player.collision = {
    size = {
      horizontal = {
        width = 10 / tilesize,
        height = 9 / tilesize
      },
      vertical = {
        width = 6 / tilesize,
        height = 13 / tilesize
      }
    }
  }
  player.anims = {
    standing = { 0 },
    falling = { 4 },
    jumping = {2},
    walking = { 32, 34, 36, 38, 40, 42, 44 },
    crouching = {2},
    flipping = {6, 8, 10}, 
    reverseFlip = {10, 8, 6},
    bounce = {12}, 
    upsidedown = {10}, 
    death = {73, 75, 77, 79}
  }
  setanim(player, "standing")
  updatecollisionbox(player)
  screensize = {
    width = 128,
    height = 128
  }
  mapsize = {
    width = 1000,
    height = 1000
  }
  
  trophy = {x = 25, y = 185, width = 2, height = 2, animatePos = 96}

  -- pixels of downward speed applied each frame
  grav = 0.5 / tilesize
  maxgrav = 4 / tilesize
  
  -- horizontal movement speed
  movspeed = 2.25 / tilesize
  
  checkpoint = checkpoints

  -- jump speed
  jumpspeed = 5 / tilesize
  
  -- jump buffering
  jumpbuffer = 3 -- number of frames allowed to buffer jumps
  jumpframes = jumpbuffer + 1
  wasjumppressed = false
  bouncing = false
  bounce_counter = 0
  flips = false
  reverseJump = false
  gameover = false
  gamewon = false
  done = false
  enemyTicker = 0
  enemyCount = 0
  gamewoncounter = 0
  
  -- jump grace period
  jumpgrace = 3 -- number of frames allowed after being on the ground to still jump
  fallingframes = jumpgrace + 1
  
  -- screen bounding box beyond which the camera will snap back to the player
  camerasnap = { left = 40, top = 16, right = screensize.width - 40, bottom = screensize.height - 48 }
  cam = { x = 0, y = 0 }

  crouching = false

  enemies = {}
end

function _update()
  player.speed.x = 0
  jumpframes = min(jumpbuffer + 1, jumpframes + 1)
  fallingframes = min(jumpgrace + 1, fallingframes + 1)

  if btn(0) then
    player.speed.x -= movspeed
  end
  if btn(1) then
    player.speed.x += movspeed
  end
  
  if btn(3) then
    if player.onground then
      crouching = true
      flips = false
    else
      crouching = false
      flips = true
    end
  else
    crouching = false
  end

  if btn(2) and not wasjumppressed then
    jumpframes = 0
  end

  if player.onground or fallingframes <= jumpgrace then
    if jumpframes <= jumpbuffer then
      jump(player)
    end

  else
    if player.jumping and not btn(2) then
      player.jumping = false
    end
  end
  if(gameover) then
    animateDeath(player)
  else
    applyphysics(player)
    animate(player)
  end
  doEnemyPhysics()
  
  wasjumppressed = btn(2)

  -- update camera position
  local screenx, screeny = player.x * tilesize - cam.x, player.y * tilesize - cam.y
  
  if screenx < camerasnap.left then
    cam.x += screenx - camerasnap.left
  elseif screenx > camerasnap.right then
    cam.x += screenx - camerasnap.right
  else
    local center = player.x * tilesize - screensize.width / 2
    cam.x += (center - cam.x) / 6
  end
  
  if screeny < camerasnap.top then
    cam.y += screeny - camerasnap.top
  elseif screeny > camerasnap.bottom then
    cam.y += screeny - camerasnap.bottom
  elseif player.onground then
    local center = player.y * tilesize - screensize.height / 2
    cam.y += (center - cam.y) / 6
  end

  local maxcamx, maxcamy = 
    max(0, mapsize.width * tilesize - screensize.width), 
    max(0, mapsize.height * tilesize - screensize.height)
    
  cam.x = mid(0, cam.x, maxcamx)
  cam.y = mid(0, cam.y, maxcamy)

  if enemyTicker == 10 and enemyCount < 30 then
    create_enemies(rnd(400), 0, 1, 1)
    enemyTicker = 0
    enemyCount = enemyCount + 1
  end
    enemyTicker = enemyTicker + 1
end

function animate(entity)
  if upsidedown then
    if bouncing then
      setanim(entity, "bounce")
    elseif reverseJump then
      setanim(entity, "reverseFlip")
    elseif entity.onground then
      //donothing
    else
      setanim(entity, "upsidedown")
    end
  elseif not entity.onground then
    if flips then
      setanim(entity, "flipping")
    else 
      setanim(entity, "falling")
    end
  elseif crouching then
    setanim(entity, "crouching")
  elseif entity.speed.x ~= 0 then
    setanim(entity, "walking")
  else  
    setanim(entity, "standing")
  end
  
  entity.animframes += 1
  entity.frame = (flr(entity.animframes / 3) % #entity.anim) + 1

  if bouncing then
    bounce_counter+=1
    if bounce_counter >= 2 then
      bouncing = false 
      bounce_counter = 0
    end
  end

  if entity.frame >= 2 and flips and not upsidedown then
    flips = false
    upsidedown = true
    reverseJump = false
    setanim(entity, "upsidedown")
  elseif entity.frame >= 2 and reverseJump and upsidedown then
    setanim(entity, "falling")
    reverseJump = false
    upsidedown = false
    flips = false
  end

  if entity.speed.x < 0 then
    entity.mirror = true
  elseif entity.speed.x > 0 then
    entity.mirror = false
  end
end

function animateDeath(entity)
  if done then
    entity.frame = 3
    reset(checkpoint)
  end
  setanim(entity, "death")
  entity.animframes += 1
  entity.frame = (flr(entity.animframes / 3) % #entity.anim) + 1
  if entity.frame == 3 then
    done = true
  end
end

function setanim(entity, name)
  if entity.anim ~= entity.anims[name] then
    entity.anim = entity.anims[name]
    entity.animframes = 0
  end
end

function jump(entity)
  entity.onground = false
  entity.jumping = true
  entity.curjumpspeed = jumpspeed
  jumpframes = jumpbuffer + 1
end

function bouncejump(entity)
  entity.onground = false
  entity.jumping = true
  entity.curjumpspeed = jumpspeed*3
  reverseJump = true
  jumpframes = jumpbuffer + 1
end

function doEnemyPhysics()
  if(((trophy.y + 32)/8 >= player.y-0.5) and (trophy.y/8 <= player.y+0.5) and ((trophy.x+16)/8 >= player.x - 0.75 and (trophy.x/8)<=player.x+0.75)) then
    gamewon = true  
  end
  for plate in all(enemies) do
    if not plate.hit_player then
      plate.y += 2
    end
    if (plate.y > 375 and plate.x < 250) then
      relocate_plate(plate)
    elseif plate.y > 500 then
      relocate_plate(plate)
    elseif (((plate.y + 8)/8) >= (player.y-0.5) and plate.y/8 <= (player.y+0.5)) and ((plate.x + 8)/8 >= player.x-0.75 and plate.x/8 <= (player.x+0.75))then
      plate.hit_player = true
    end
  end
end

function applyphysics(entity)
  local speed = entity.speed
  if entity.y > 70 then
    reset(checkpoint)
  end
  if entity.jumping or speed.y < 0 then
    if entity.jumping then
      entity.curjumpspeed -= jumpspeed / 10
    else
      entity.curjumpspeed = 0
    end
    
    speed.y = -entity.curjumpspeed
    
    if entity.curjumpspeed <= 0 then
      entity.jumping = false
    end
  else
    speed.y = min(maxgrav, speed.y + grav)
  end

  -- increase precision by applying physics in smaller steps
  -- the more steps, the faster things can go without going through terrain
  local steps = 1
  local highestspeed = max(abs(speed.x), abs(speed.y))
  
  if highestspeed >= 0.25 then
    steps = ceil(highestspeed / 0.25)
  end
  
  for i = 1, steps do
    entity.x += speed.x / steps
    entity.y += speed.y / steps
        
    
    updatecollisionbox(entity)
    
    -- wall collisions
    for tile in gettiles(entity, "horizontal") do
      if tile.sprite > 0 and not tile.slope then
        if entity.x < tile.x + 0.5 then
          -- push out to the left
          entity.x = tile.x - entity.collision.size.horizontal.width / 2
        else
          -- push out to the right
          entity.x = tile.x + 1 + entity.collision.size.horizontal.width / 2
        end
      end
    end
    
    updatecollisionbox(entity)
    
    -- floor collisions
    for tile in gettiles(entity, "floor") do
      if tile.sprite > 0 and not tile.slope then
        speed.y = 0
        entity.y = tile.y
        entity.onground = true
        if upsidedown then
          bouncejump(entity)
          bouncing = true
        else
          entity.jumping = false
        end
        fallingframes = 0
      end
    end
    
    updatecollisionbox(entity)
    
    -- ceiling collisions
    for tile in gettiles(entity, "ceiling") do
      if tile.sprite > 0 and not tile.slope then
        speed.y = 0
        entity.y = tile.y + 1 + entity.collision.size.vertical.height
        entity.jumping = false
      end
    end
  end

  if player.x > 300/8 and not checkpoint then
    checkpoint = true
  end
end

-- gets all tiles that might be intersecting entity's collision box
function gettiles(entity, boxtype)
  local box = entity.collision.box[boxtype]
  local left, top, right, bottom =
    flr(box.left), flr(box.top), flr(box.right), flr(box.bottom)
    
  local x, y = left, top
    
  -- iterator function
  return function()
    if y > bottom then
      return nil
    end
    
    local sprite = mget(x, y)
    local ret = { sprite = sprite, x = x, y = y }

    local flags = fget(sprite)

    if band(flags, 128) == 128 then
      -- this is a slope if flag 7 is set
      ret.slope = {
        reversed = band(flags, 64) == 64, -- reversed if flag 6 is set,
        height = (band(flags, 7) + 1) / tilesize, -- the first 3 bits/flags set the slope height from 1-8
        offset = band(lshr(flags, 3), 7) / tilesize -- bits/flags 4 through 6 set the offset from the bottom of the tile between 0 and 7
      }
    end

    x += 1
    if x > right then
      x = left
      y += 1
    end
    
    return ret
  end
end

function updatecollisionbox(entity)
  local size = entity.collision.size

  entity.collision.box = {
    horizontal = {
      left = entity.x - size.horizontal.width / 2,
      top = entity.y - size.vertical.height + (size.vertical.height - size.horizontal.height) / 2,
      right = entity.x + size.horizontal.width / 2,
      bottom = entity.y - (size.vertical.height - size.horizontal.height) / 2
    },
    floor = {
      left = entity.x - size.vertical.width / 2,
      top = entity.y - size.vertical.height / 2,
      right = entity.x + size.vertical.width / 2,
      bottom = entity.y
    },
    ceiling = {
      left = entity.x - size.vertical.width / 2,
      top = entity.y - size.vertical.height,
      right = entity.x + size.vertical.width / 2,
      bottom = entity.y - size.vertical.height / 2
    }
  }
end

function create_enemies(x_pos, y_pos, w, h)
  add(enemies, {x=x_pos, y=y_pos, width = w, height = h, hit_player = false, animation_count = 70})
end 

function relocate_plate(plate)
  plate.x = rnd(1000)
  plate.y = 0
  plate.hit_player = false
  plate.animation_count = 70
end

function _draw()
  camera(cam.x, cam.y)

  pal()
  palt(0, true)
  palt(12, true)

  cls(12)
  map(0, 0, 0, 0)
  for plate in all(enemies) do
    if plate.hit_player == true then
      plate.animation_count += 1
      spr(plate.animation_count, plate.x, plate.y, plate.width, plate.height)
      if plate.animation_count == 72 then
        relocate_plate(plate)
        gameover = true
      end
    else  
      spr(70, plate.x, plate.y, plate.width, plate.height)
    end
  end
  spr(player.anim[player.frame], player.x * tilesize - 8, player.y * tilesize - 16, 2, 2, player.mirror)
  spr(trophy.animatePos, trophy.x, trophy.y, trophy.height, trophy.width)
  print("ESCAPE THE KITCHEN!!!", 5, 400, 7)
  print("PRESS ARROW KEYS TO MOVE / JUMP", 5, 410, 7)
  print("PRESS DOWN IN MIDAIR TO FLIP OVER", 5, 420, 7)

  if gamewon then
    print("YOU WON", 17, 180, 7)
    spr(player.anim[player.frame], player.x, player.y)
    music(5)
    gamewoncounter = gamewoncounter + 1
    if gamewoncounter == 50 then
      _init()
    end
  end
end