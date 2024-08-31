function love.load()
    Red_head = love.graphics.newImage("Sprites/Red_head.png")
    icona = love.image.newImageData("Sprites/Icon.png")
    love.window.setIcon(icona)
    Urlo1 = love.audio.newSource("Sounds/Urlo1.mp3", "static")
    Urlo2 = love.audio.newSource("Sounds/Urlo2.mp3", "static")
    Urlo3 = love.audio.newSource("Sounds/Urlo3.mp3", "static")
    love.graphics.setDefaultFilter("nearest", "nearest")
    love.window.setMode(500,500)
    love.window.setTitle("Hat simulator")
    points = 0
end

function love.mousepressed(mousex, mousey, button)
    if button == 1 then
        points = points + 1
        numero = love.math.random(1,3)
        if numero == 1 then
            Urlo1:play()
        elseif numero == 2 then
            Urlo2:play()
        elseif numero == 3 then
            Urlo3:play()
        end
        
    end
    
end

function love.update(dt)
    mousex = love.mouse.getX()
    mousey = love.mouse.getY()
end

function love.draw()
    love.graphics.print(points, 240, 20, 0, 3)
    love.graphics.draw(Red_head, 85, 104, 0, 1.5)
end