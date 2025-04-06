local angle = 0  
local x, y = 400, 300  
local size = 100  

local rotationSpeed = 5  
local maxspeed= 20;
local minspeed= -20;


function love.update(dt)
   
    if love.keyboard.isDown("up") then
        rotationSpeed = math.min(rotationSpeed + 1, maxspeed)
    end

    
    if love.keyboard.isDown("down") then
        rotationSpeed = math.max(rotationSpeed - 1, minspeed)
    end

    angle = angle + rotationSpeed * dt
    
    if love.keyboard.isDown("escape") then
        love.event.quit()
    end
end

function love.draw()
    
    love.graphics.push()  
    love.graphics.translate(x, y)  
    love.graphics.rotate(angle)  

    
    love.graphics.rectangle("line", -size / 2, -size / 2, size, size)

    love.graphics.pop() 
end
