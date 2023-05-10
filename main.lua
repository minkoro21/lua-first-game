local angle=0
local angle2=0
local time=0
local min=0
local t=0
local t2=0
local hours=0
function love.load()
    x, y, w, h, r = 850/2, 700/2, 80, 40,80
    x2, y2, w2, h2, r2=300, 250, 20, 20, 20
    x3, y3, w3, h3, r3=200, 100, 15, 15, 15
    x4, y4, w4, h4, r4=150, 50, 25, 25, 25
    --t=math.pi
end

-- Increase the size of the rectangle every frame.
function love.update(dt)
    angle = angle + .7*math.pi * dt
    angle2= angle + .5*math.pi * dt
    love.graphics.setBackgroundColor(1, 1, 1)
    --t=t+.2
    time=time+1
    min=0+t
    hours=0+t2
    if time==60 then
        
        time=0
        time=time+1
        t=t+1
    end
    min=t
    if min==60 then
        min=0
        t=0
        t=t+1
        min=min+t
        t2=t2+1
    end
    hours=t2
end

-- Draw a coloured rectangle.
function love.draw()
    -- In versions prior to 11.0, color component values are (0, 102, 102)
    
    love.window.setTitle("SOLARY SYSTEME")
    love.graphics.setColor(0 , 0, 0)
    love.graphics.print("SECOND:")
    love.graphics.print(time, 74)
    love.graphics.print(min, 74, 20)
    love.graphics.print("MINUTE:", 0, 20)
    love.graphics.print(hours, 74, 40)
    love.graphics.print("HOURS:", 0, 40)
    love.graphics.print("SOLARY SYSTEME", 355)
    love.graphics.setColor(1, 1, 0)
    
    love.graphics.circle("fill", x, y, w, h, r)


    love.graphics.translate(x, y)
    love.graphics.rotate(angle)
    love.graphics.translate(-x,-y)
    

    love.graphics.setColor(1, 0, 0)
    love.graphics.circle("fill", x4, y4, w4, h4, r4)

    love.graphics.translate(x, y)
    love.graphics.rotate(angle)
    love.graphics.translate(-x,-y)

    love.graphics.setColor(0, 0, 1)
    love.graphics.circle("fill", x3, y3, w3, h3, r3)
    love.graphics.translate(x, y)
    love.graphics.rotate(angle)
    love.graphics.translate(-x,-y)
    love.graphics.setColor(1, 1, 0)
    love.graphics.circle("fill", x2, y2, w2, h2, r2)
end