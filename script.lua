local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()


local Window = Library.CreateLib("Prison Life", "RJTheme6")

local Main = Window:NewTab("Main")
local Move = Window:NewTab("Move")
local Tp = Window:NewTab("Tp")
local Scripts = Window:NewTab("Scripts")
local Gui = Window:NewTab("Gui")
local Creator = Window:NewTab("Creator")

local MainSection = Main:NewSection("Main")
local MoveSection = Move:NewSection("Move")
local TpSection = Tp:NewSection("Tp")
local ScriptsSection = Scripts:NewSection("Scripts")
local GuiSection = Gui:NewSection("Gui")
local CreatorSection = Creator:NewSection("Creator: Bemplia/aleksey312")

MainSection:NewButton("Rejoin", "Rejoin", function()
    local ts = game:GetService("TeleportService")

local p = game:GetService("Players").LocalPlayer

 

ts:Teleport(game.PlaceId, p)
end)

MainSection:NewButton("Esp","Esp", function()
while wait(0.5) do
    for i, childrik in ipairs(workspace:GetDescendants()) do
        if childrik:FindFirstChild("Humanoid") then
            if not childrik:FindFirstChild("EspBox") then
                if childrik ~= game.Players.LocalPlayer.Character then
                    local esp = Instance.new("BoxHandleAdornment",childrik)
                    esp.Adornee = childrik
                    esp.ZIndex = 0
                    esp.Size = Vector3.new(4, 5, 1)
                    esp.Transparency = 0.65
                    esp.Color3 = Color3.fromRGB(138, 245, 66)
                    esp.AlwaysOnTop = true
                    esp.Name = "EspBox"
                end
            end
        end
    end
end
end)

MoveSection:NewSlider("WalkSpeed", "WalkSpeed", 500, 16, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

MoveSection:NewTextBox("WalkSpeed", "WalkSpeed", function(WalkSpeed)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WalkSpeed
end)

MoveSection:NewSlider("JumpPower", "JumpPower", 500, 50, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

MoveSection:NewTextBox("JumpPower", "JumpPower", function(JumpPower)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPower
end)

MoveSection:NewToggle("Sit", "Sit", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.Sit = true
    else
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end
end)

MoveSection:NewToggle("Noclip", "Noclip", function(state)
    if state then
        while wait() do
            game.Players.LocalPlayer.Character.Head.CanCollide = false
            game.Players.LocalPlayer.Character.Torso.CanCollide = false
        end
    else
        game.Players.LocalPlayer.Character.Head.CanCollide = true
        game.Players.LocalPlayer.Character.Torso.CanCollide = true
    end
end)

TpSection:NewButton("Criminal", "Criminal", function()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-944.109924, 94.1287613, 2056.12915, -0.00615212973, -2.64333622e-08, -0.999981046, 9.01288466e-09, 1, -2.64893121e-08, 0.999981046, -9.17567977e-09, -0.00615212973)

end)

TpSection:NewButton("Prison", "Prison", function()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(902.311401, 99.9899826, 2363.17896, -0.0118754432, -5.24754107e-08, -0.999929488, 1.77131714e-08, 1, -5.26894794e-08, 0.999929488, -1.83376336e-08, -0.0118754432)

end)

TpSection:NewButton("Police", "Police", function()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(835.176147, 99.9899826, 2267.24316, -0.999078155, 3.44992079e-09, -0.0429281555, 6.58571508e-09, 1, -7.29060687e-08, 0.0429281555, -7.31215763e-08, -0.999078155)

end)

TpSection:NewButton("Roof", "Roof", function()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(818.898376, 118.989983, 2348.96045, -0.999939859, 6.14879099e-08, -0.0109650521, 6.10031208e-08, 1, 4.45465353e-08, 0.0109650521, 4.38749552e-08, -0.999939859)

end)

TpSection:NewButton("Street", "Street", function()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(820.087646, 97.9999237, 2447.35889, 0.999900699, 5.87913966e-08, -0.0140917376, -5.75542884e-08, 1, 8.81950868e-08, 0.0140917376, -8.7375291e-08, 0.999900699)

end)

TpSection:NewButton("Street1", "Street", function()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540.931458, 97.9999237, 2282.80933, 0.0220398661, -2.99433118e-08, 0.999757111, -1.18419168e-08, 1, 3.02116447e-08, -0.999757111, -1.25049002e-08, 0.0220398661)

end)

ScriptsSection:NewButton("Dark Dex", "Dark Dex", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end)

ScriptsSection:NewButton("Infinite Yield", "Infinite Yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)

ScriptsSection:NewButton("Remote Spy", "Remote Spy", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/bCghX33W", true))()
end)

ScriptsSection:NewButton("BS Hub V2", "BS Hub V2", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/n7HJxfHf"))();
end)


GuiSection:NewKeybind("Toggle GUI", "", Enum.KeyCode.L, function()
	Library:ToggleUI()
end)
