local player = game.Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AkGamingEz_UI"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = PlayerGui

local blackBackground = Instance.new("Frame")
blackBackground.Size = UDim2.new(1, 0, 1, 0)
blackBackground.Position = UDim2.new(0, 0, 0, 0)
blackBackground.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
blackBackground.BorderSizePixel = 0
blackBackground.ZIndex = 1
blackBackground.Parent = screenGui

local backgroundFrame = Instance.new("Frame")
backgroundFrame.Size = UDim2.new(0, 500, 0, 160)
backgroundFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
backgroundFrame.AnchorPoint = Vector2.new(0.5, 0.5)
backgroundFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
backgroundFrame.BackgroundTransparency = 0.3
backgroundFrame.BorderSizePixel = 0
backgroundFrame.ZIndex = 2
backgroundFrame.Parent = screenGui

local uiCorner = Instance.new("UICorner", backgroundFrame)
uiCorner.CornerRadius = UDim.new(0, 12)

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 0.5, 0)
textLabel.Position = UDim2.new(0, 0, 0, 5)
textLabel.BackgroundTransparency = 1
textLabel.Text = ""
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextStrokeTransparency = 0.15
textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
textLabel.Font = Enum.Font.SciFi
textLabel.TextSize = 50
textLabel.ZIndex = 3
textLabel.Parent = backgroundFrame

local subTextLabel = Instance.new("TextLabel")
subTextLabel.Size = UDim2.new(1, 0, 0.4, 0)
subTextLabel.Position = UDim2.new(0, 0, 0.6, -5)
subTextLabel.BackgroundTransparency = 1
subTextLabel.Text = "Tất cả các client và script đều không cần vượt link"
subTextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
subTextLabel.TextStrokeTransparency = 0.5
subTextLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
subTextLabel.Font = Enum.Font.SciFi
subTextLabel.TextSize = 18
subTextLabel.ZIndex = 3
subTextLabel.Parent = backgroundFrame

local loadingBarBackground = Instance.new("Frame")
loadingBarBackground.Size = UDim2.new(0.9, 0, 0, 8)
loadingBarBackground.Position = UDim2.new(0.05, 0, 1, -15)
loadingBarBackground.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
loadingBarBackground.BorderSizePixel = 0
loadingBarBackground.ZIndex = 2
loadingBarBackground.Parent = backgroundFrame

local loadingBarFill = Instance.new("Frame")
loadingBarFill.Size = UDim2.new(0, 0, 1, 0)
loadingBarFill.Position = UDim2.new(0, 0, 0, 0)
loadingBarFill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
loadingBarFill.BorderSizePixel = 0
loadingBarFill.ZIndex = 3
loadingBarFill.Parent = loadingBarBackground

local corner1 = Instance.new("UICorner", loadingBarBackground)
corner1.CornerRadius = UDim.new(0, 4)
local corner2 = Instance.new("UICorner", loadingBarFill)
corner2.CornerRadius = UDim.new(0, 4)

local textToShow = "Ak Gaming Ez"
for i = 1, #textToShow do
	textLabel.Text = string.sub(textToShow, 1, i)
	task.wait(0.08)
end

local loadTime = 5
local steps = 50
for i = 1, steps do
	loadingBarFill.Size = UDim2.new(i/steps, 0, 1, 0)
	task.wait(loadTime / steps)
end

screenGui:Destroy()

pcall(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/hehej97/AKGaming/refs/heads/main/akgamingytb.lua"))() 
end)
