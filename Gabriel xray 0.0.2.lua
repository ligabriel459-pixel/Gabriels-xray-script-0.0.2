local gui = Instance.new("ScreenGui")
gui.Name = "XRaySystem"
gui.ResetOnSpawn = false
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local pwFrame = Instance.new("Frame")
pwFrame.Size = UDim2.new(0, 300, 0, 180)
pwFrame.Position = UDim2.new(0.5, -150, 0.5, -90)
pwFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
pwFrame.Parent = gui

local pwTitle = Instance.new("TextLabel")
pwTitle.Size = UDim2.new(1, 0, 0, 40)
pwTitle.BackgroundTransparency = 1
pwTitle.Text = "What's the password"
pwTitle.TextScaled = true
pwTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
pwTitle.Font = Enum.Font.GothamBold
pwTitle.Parent = pwFrame

local pwBox = Instance.new("TextBox")
pwBox.Size = UDim2.new(1, -40, 0, 40)
pwBox.Position = UDim2.new(0, 20, 0, 60)
pwBox.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
pwBox.TextColor3 = Color3.fromRGB(255, 255, 255)
pwBox.PlaceholderText = "Enter password"
pwBox.Text = ""
pwBox.TextScaled = true
pwBox.Font = Enum.Font.Gotham
pwBox.Parent = pwFrame

local pwEnter = Instance.new("TextButton")
pwEnter.Size = UDim2.new(1, -40, 0, 40)
pwEnter.Position = UDim2.new(0, 20, 0, 110)
pwEnter.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
pwEnter.TextColor3 = Color3.fromRGB(255, 255, 255)
pwEnter.Text = "Enter"
pwEnter.TextScaled = true
pwEnter.Font = Enum.Font.GothamBold
pwEnter.Parent = pwFrame

local wrong = Instance.new("TextLabel")
wrong.Size = UDim2.new(1, 0, 0, 30)
wrong.Position = UDim2.new(0, 0, 1, 0)
wrong.BackgroundTransparency = 1
wrong.Text = "Wrong password"
wrong.TextScaled = true
wrong.TextColor3 = Color3.fromRGB(255, 0, 0)
wrong.Font = Enum.Font.GothamBold
wrong.Visible = false
wrong.Parent = pwFrame

local xrayGui = Instance.new("Frame")
xrayGui.Size = UDim2.new(0, 220, 0, 420) -- EXTENDED HEIGHT
xrayGui.Position = UDim2.new(0, 20, 0, 200)
xrayGui.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
xrayGui.Visible = false
xrayGui.Active = true
xrayGui.Draggable = true
xrayGui.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Text = "X-Ray Slider"
title.Parent = xrayGui

local sliderBg = Instance.new("Frame")
sliderBg.Size = UDim2.new(1, -20, 0, 10)
sliderBg.Position = UDim2.new(0, 10, 0, 50)
sliderBg.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
sliderBg.Parent = xrayGui

local sliderBtn = Instance.new("Frame")
sliderBtn.Size = UDim2.new(0, 12, 0, 20)
sliderBtn.Position = UDim2.new(0, 0, -0.5, 5)
sliderBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
sliderBtn.Parent = sliderBg

local valueLabel = Instance.new("TextLabel")
valueLabel.Size = UDim2.new(1, 0, 0, 20)
valueLabel.Position = UDim2.new(0, 0, 0, 65)
valueLabel.BackgroundTransparency = 1
valueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
valueLabel.Text = "Transparency: 0"
valueLabel.Parent = xrayGui

local superBtn = Instance.new("TextButton")
superBtn.Size = UDim2.new(1, -20, 0, 25)
superBtn.Position = UDim2.new(0, 10, 0, 100)
superBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
superBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
superBtn.Text = "Super X-Ray"
superBtn.Parent = xrayGui

local discordBtn = Instance.new("TextButton")
discordBtn.Size = UDim2.new(1, -20, 0, 25)
discordBtn.Position = UDim2.new(0, 10, 0, 135)
discordBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 150)
discordBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
discordBtn.Text = "Discord Server"
discordBtn.Font = Enum.Font.GothamBold
discordBtn.TextScaled = true
discordBtn.Parent = xrayGui

local healBtn = Instance.new("TextButton")
healBtn.Size = UDim2.new(1, -20, 0, 25)
healBtn.Position = UDim2.new(0, 10, 0, 170)
healBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
healBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
healBtn.Text = "Heal"
healBtn.Font = Enum.Font.GothamBold
healBtn.TextScaled = true
healBtn.Parent = xrayGui

---------------------------------------------------------
-- TITLE SYSTEM (MERGED)
---------------------------------------------------------

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 20)
titleLabel.Position = UDim2.new(0, 0, 0, 210)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Title:"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextScaled = true
titleLabel.Parent = xrayGui

local titleBox = Instance.new("TextBox")
titleBox.Size = UDim2.new(1, -20, 0, 25)
titleBox.Position = UDim2.new(0, 10, 0, 235)
titleBox.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
titleBox.TextColor3 = Color3.fromRGB(255, 255, 255)
titleBox.PlaceholderText = "Enter title"
titleBox.Text = ""
titleBox.TextScaled = true
titleBox.Font = Enum.Font.Gotham
titleBox.Parent = xrayGui

local function createRGBSlider(yPos)
    local bg = Instance.new("Frame")
    bg.Size = UDim2.new(1, -20, 0, 10)
    bg.Position = UDim2.new(0, 10, 0, yPos)
    bg.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    bg.Parent = xrayGui

    local btn = Instance.new("Frame")
    btn.Size = UDim2.new(0, 12, 0, 20)
    btn.Position = UDim2.new(0, 0, -0.5, 5)
    btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    btn.Parent = bg

    return bg, btn
end

local rBg, rBtn = createRGBSlider(270)
local gBg, gBtn = createRGBSlider(300)
local bBg, bBtn = createRGBSlider(330)

local r, g, b = 255, 255, 255
local draggingR, draggingG, draggingB = false, false, false

local UIS = game:GetService("UserInputService")

local function sliderLogic(bg, btn, callback, flag)
    btn.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            _G[flag] = true
        end
    end)

    UIS.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            _G[flag] = false
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if _G[flag] and input.UserInputType == Enum.UserInputType.MouseMovement then
            local mouseX = UIS:GetMouseLocation().X
            local barPos = bg.AbsolutePosition.X
            local barSize = bg.AbsoluteSize.X
            local percent = math.clamp((mouseX - barPos) / barSize, 0, 1)
            btn.Position = UDim2.new(percent, -6, -0.5, 5)
            callback(math.floor(percent * 255))
        end
    end)
end

sliderLogic(rBg, rBtn, function(v) r = v end, "draggingR")
sliderLogic(gBg, gBtn, function(v) g = v end, "draggingG")
sliderLogic(bBg, bBtn, function(v) b = v end, "draggingB")

local applyBtn = Instance.new("TextButton")
applyBtn.Size = UDim2.new(1, -20, 0, 30)
applyBtn.Position = UDim2.new(0, 10, 0, 360)
applyBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
applyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
applyBtn.Text = "Apply Title"
applyBtn.Font = Enum.Font.GothamBold
applyBtn.TextScaled = true
applyBtn.Parent = xrayGui

local billboard = nil

applyBtn.MouseButton1Click:Connect(function()
    local char = game.Players.LocalPlayer.Character
    if not char then return end

    if billboard then
        billboard:Destroy()
    end

    billboard = Instance.new("BillboardGui")
    billboard.Size = UDim2.new(0, 200, 0, 50)
    billboard.Adornee = char:WaitForChild("Head")
    billboard.AlwaysOnTop = true
    billboard.Parent = char

    local text = Instance.new("TextLabel")
    text.Size = UDim2.new(1, 0, 1, 0)
    text.BackgroundTransparency = 1
    text.Text = titleBox.Text
    text.TextScaled = true
    text.Font = Enum.Font.GothamBold
    text.TextColor3 = Color3.fromRGB(r, g, b)
    text.Parent = billboard
end)

---------------------------------------------------------
-- REST OF YOUR SCRIPT (UNCHANGED)
---------------------------------------------------------

discordBtn.MouseButton1Click:Connect(function()
    setclipboard("https://discord.com/channels/1508459728060022885/1508460599716216942")
    local copied = Instance.new("TextLabel")
    copied.Size = UDim2.new(1, 0, 1, 0)
    copied.BackgroundTransparency = 1
    copied.Text = "Copied to clipboard"
    copied.TextScaled = true
    copied.TextColor3 = Color3.fromRGB(255, 255, 255)
    copied.Font = Enum.Font.GothamBold
    copied.Parent = gui
    task.wait(1)
    copied:Destroy()
end)

healBtn.MouseButton1Click:Connect(function()
    local char = game.Players.LocalPlayer.Character
    if not char then return end
    local hum = char:FindFirstChild("Humanoid")
    if not hum then return end

    for i = 1, 20 do
        hum.Health = hum.MaxHealth
        task.wait(0.05)
    end
end)

local overlay = Instance.new("Frame")
overlay.Size = UDim2.new(1, 0, 1, 0)
overlay.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
overlay.BackgroundTransparency = 0.6
overlay.Visible = false
overlay.Parent = gui

local fov = Instance.new("ImageLabel")
fov.Size = UDim2.new(0, 600, 0, 600)
fov.Position = UDim2.new(0.5, -300, 0.5, -300)
fov.BackgroundTransparency = 1
fov.Image = "rbxassetid://13425743318"
fov.ImageColor3 = Color3.fromRGB(0, 255, 0)
fov.ImageTransparency = 0.2
fov.Visible = false
fov.Parent = gui

local function playGlitch()
    overlay.Visible = true
    fov.Visible = true
    overlay.BackgroundTransparency = 0.2
    fov.ImageTransparency = 0.05
    task.wait(0.05)
    overlay.BackgroundTransparency = 0.4
    fov.ImageTransparency = 0.3
    task.wait(0.05)
    overlay.BackgroundTransparency = 0.6
    fov.ImageTransparency = 0.2
    task.wait(0.05)
end

local superOn = false

superBtn.MouseButton1Click:Connect(function()
    if not superOn then
        playGlitch()
        superOn = true
    else
        overlay.Visible = false
        fov.Visible = false
        superOn = false
    end
end)

local UIS = game:GetService("UserInputService")
local dragging = false

local originalTransparency = {}
for _, obj in ipairs(workspace:GetDescendants()) do
    if obj:IsA("BasePart") then
        originalTransparency[obj] = obj.Transparency
    end
end

local function updateXRay(amount)
    for part, original in pairs(originalTransparency) do
        if part and part:IsA("BasePart") then
            part.Transparency = math.clamp(original + amount, 0, 1)
        end
    end
end

sliderBtn.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        xrayGui.Draggable = false
    end
end)

UIS.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
        xrayGui.Draggable = true
    end
end)

UIS.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local mouseX = UIS:GetMouseLocation().X
        local barPos = sliderBg.AbsolutePosition.X
        local barSize = sliderBg.AbsoluteSize.X
        local percent = math.clamp((mouseX - barPos) / barSize, 0, 1)
        sliderBtn.Position = UDim2.new(percent, -6, -0.5, 5)
        valueLabel.Text = "Transparency: " .. math.floor(percent * 100)
        updateXRay(percent)
    end
end)

local tabletBtn = Instance.new("TextButton")
tabletBtn.Size = UDim2.new(0, 200, 0, 40)
tabletBtn.Position = UDim2.new(0.5, -100, 1, -50)
tabletBtn.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
tabletBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
tabletBtn.Text = "▲"
tabletBtn.Font = Enum.Font.GothamBold
tabletBtn.TextScaled = true
tabletBtn.Visible = false
tabletBtn.Parent = gui

local tabletOpen = false

local function cameraOpen()
    local flash = Instance.new("Frame")
    flash.Size = UDim2.new(1, 0, 1, 0)
    flash.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    flash.BackgroundTransparency = 0
    flash.Parent = gui
    task.wait(0.05)
    flash:Destroy()
end

local function cameraClose()
    local flash = Instance.new("Frame")
    flash.Size = UDim2.new(1, 0, 1, 0)
    flash.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    flash.BackgroundTransparency = 0
    flash.Parent = gui
    task.wait(0.05)
    flash:Destroy()
end

local rejoinBtn = Instance.new("TextButton")
rejoinBtn.Size = UDim2.new(0, 120, 0, 40)
rejoinBtn.Position = UDim2.new(0, 20, 1, -50)
rejoinBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
rejoinBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
rejoinBtn.Text = "Rejoin"
rejoinBtn.Font = Enum.Font.GothamBold
rejoinBtn.TextScaled = true
rejoinBtn.Visible = false
rejoinBtn.Active = true
rejoinBtn.Draggable = true
rejoinBtn.Parent = gui

rejoinBtn.MouseButton1Click:Connect(function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
end)

tabletBtn.MouseButton1Click:Connect(function()
    if not tabletOpen then
        cameraOpen()
        xrayGui.Visible = true
        rejoinBtn.Visible = true
        tabletBtn.Text = "▼"
        tabletOpen = true
    else
        cameraClose()
        xrayGui.Visible = false
        rejoinBtn.Visible = false
        tabletBtn.Text = "▲"
        tabletOpen = false
    end
