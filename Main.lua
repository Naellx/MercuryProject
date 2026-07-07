local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
    Name = "Mercury Project",
    LoadingTitle = "Mercury Project",
    LoadingSubtitle = "by Mercury",
})

local Tab = Window:CreateTab("Main", 4483362458)

Tab:CreateButton({
    Name = "Test",
    Callback = function()
        print("Hello Mercury Project")
    end
})
