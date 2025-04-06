function love.load()
    love.graphics.setBackgroundColor(0.2, 0.6, 0.8) -- kolor tła (RGB w skali 0–1)
    font = love.graphics.newFont(32) -- czcionka 32px
    love.graphics.setFont(font)
end

function love.draw()
    love.graphics.setColor(1, 1, 1) -- biały tekst
    love.graphics.print("Siema Lua!", 100, 100)
end
