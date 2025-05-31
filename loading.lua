repeat task.wait() until game:IsLoaded()

local gameName = "Grow a Garden"

local texts = {
	"Loading Game Modules...",
	gameName.." Modules Loaded!",
	"Bypassing"..gameName.."Anti Cheat...",
	gameName.." Anti Cheat Bypassed!",
	"Waiting for assets to load!",
	"Assets loaded!",
	"Utilizing Script...",
	"Improving Performance...",
	"Please Wait!",
	"Join our discord!"
}

local steps = 1000
local duration = 20

local function checkExists()
    local x = game.CoreGui:FindFirstChild("scrololo")
    local z = game.Lighting:FindFirstChild("blururur")
    task.spawn(function()
        if x then
            x:Destroy()
        end
        if z then
            z:Destroy()
        end
    end)
end

checkExists()

local blur = Instance.new("BlurEffect")
blur.Name = "blururur"
blur.Parent = game.Lighting
blur.Size = 200

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "scrololo"
screenGui.DisplayOrder = 1e+09
screenGui.IgnoreGuiInset = true
screenGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
screenGui.Parent = game.CoreGui

local mainFrame = Instance.new("Frame")
mainFrame.Name = "mainFrame"
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
mainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Position = UDim2.fromScale(0.5, 0.5)
mainFrame.Size = UDim2.fromOffset(400, 300)

local mFCorner = Instance.new("UICorner")
mFCorner.Name = "MFCorner"
mFCorner.CornerRadius = UDim.new(0, 10)
mFCorner.Parent = mainFrame

local canvasGroup = Instance.new("CanvasGroup")
canvasGroup.Name = "CanvasGroup"
canvasGroup.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
canvasGroup.BorderColor3 = Color3.fromRGB(0, 0, 0)
canvasGroup.BorderSizePixel = 0
canvasGroup.Size = UDim2.fromScale(1, 1)

local cGGradient = Instance.new("UIGradient")
cGGradient.Name = "CGGradient"
cGGradient.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
  ColorSequenceKeypoint.new(1, Color3.fromRGB(112, 255, 200)),
})
cGGradient.Rotation = 90
cGGradient.Transparency = NumberSequence.new({
  NumberSequenceKeypoint.new(0, 1),
  NumberSequenceKeypoint.new(1, 0.874),
})
cGGradient.Parent = canvasGroup

local cGCorner = Instance.new("UICorner")
cGCorner.Name = "CGCorner"
cGCorner.CornerRadius = UDim.new(0, 10)
cGCorner.Parent = canvasGroup

canvasGroup.Parent = mainFrame

local hubName = Instance.new("TextLabel")
hubName.Name = "HubName"
hubName.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Bold,
  Enum.FontStyle.Normal
)
hubName.Text = "Bipolar HUB"
hubName.TextColor3 = Color3.fromRGB(255, 255, 255)
hubName.TextScaled = true
hubName.TextSize = 30
hubName.TextWrapped = true
hubName.AnchorPoint = Vector2.new(0.5, 0)
hubName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hubName.BackgroundTransparency = 1
hubName.BorderColor3 = Color3.fromRGB(0, 0, 0)
hubName.BorderSizePixel = 0
hubName.Position = UDim2.fromScale(0.5, 0.083)
hubName.Size = UDim2.new(1, -50, 0.0833, 20)

local hNGradient = Instance.new("UIGradient")
hNGradient.Name = "HNGradient"
hNGradient.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 113, 75)),
  ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 115)),
})
hNGradient.Rotation = -180

hNGradient.Parent = hubName

hubName.Parent = mainFrame

local loadingFrame = Instance.new("Frame")
loadingFrame.Name = "loadingFrame"
loadingFrame.AnchorPoint = Vector2.new(0.5, 1)
loadingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
loadingFrame.BackgroundTransparency = 0.55
loadingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
loadingFrame.BorderSizePixel = 0
loadingFrame.Position = UDim2.new(0.5, 0, 1, -30)
loadingFrame.Size = UDim2.new(1, -50, 0, 30)

local lFCorner = Instance.new("UICorner")
lFCorner.Name = "LFCorner"
lFCorner.Parent = loadingFrame

local loadingBar = Instance.new("Frame")
loadingBar.Name = "loadingBar"
loadingBar.AnchorPoint = Vector2.new(0, 0.5)
loadingBar.BackgroundColor3 = Color3.fromRGB(112, 255, 200)
loadingBar.BackgroundTransparency = 0.7
loadingBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
loadingBar.BorderSizePixel = 0
loadingBar.Position = UDim2.fromScale(0, 0.5)
loadingBar.Size = UDim2.fromOffset(5, 30)

local lBCorner = Instance.new("UICorner")
lBCorner.Name = "LBCorner"
lBCorner.Parent = loadingBar

loadingBar.Parent = loadingFrame

loadingFrame.Parent = mainFrame

local loadingText = Instance.new("TextLabel")
loadingText.Name = "loadingText"
loadingText.FontFace = Font.new(
  "rbxasset://fonts/families/GothamSSm.json",
  Enum.FontWeight.Bold,
  Enum.FontStyle.Normal
)
loadingText.Text = "loading..."
loadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
loadingText.TextSize = 14
loadingText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
loadingText.BackgroundTransparency = 1
loadingText.BorderColor3 = Color3.fromRGB(0, 0, 0)
loadingText.BorderSizePixel = 0
loadingText.Position = UDim2.fromScale(0.25, 0.697)
loadingText.Size = UDim2.fromOffset(200, 24)

loadingText.Parent = mainFrame

local mFStroke = Instance.new("UIStroke")
mFStroke.Name = "MFStroke"
mFStroke.Color = Color3.fromRGB(5, 255, 193)
mFStroke.Parent = mainFrame

mainFrame.Parent = screenGui

local frame = Instance.new("Frame")
frame.Name = "Frame"
frame.BackgroundColor3 = Color3.fromRGB(17, 35, 36)
frame.BackgroundTransparency = 0.05
frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
frame.BorderSizePixel = 0
frame.Size = UDim2.fromScale(1, 1)
frame.ZIndex = 0
frame.Active = true
frame.Parent = screenGui

task.spawn(function()
	for i = 0, steps do
		local progress = i / steps
		loadingBar.Size = UDim2.new(progress, 0, 1, 0)
		task.wait(duration / steps)
	end
end)

task.spawn(function()
	local startTime = tick()
	local totalTexts = #texts

	for i = 1, totalTexts do
		loadingText.Text = texts[i]

		task.wait(6)
		if i == totalTexts then
			break
		end
	end
end)

task.spawn(function()
	while true do
		hNGradient.Rotation += 1
		task.wait()
	end
end)