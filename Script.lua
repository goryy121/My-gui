print("GUI loading...")

local player = game:GetService("Players").LocalPlayer
repeat task.wait() until player

-- Tạo ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MyGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Tạo Frame chính
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.Parent = screenGui

local mainText = Instance.new("TextLabel")
mainText.Size = UDim2.new(0.9, 0, 0.4, 0)
mainText.Position = UDim2.new(0.05, 0, 0.25, 0)
mainText.BackgroundTransparency = 1
mainText.Text = "click vào copy"
mainText.TextColor3 = Color3.new(1,1,1)
mainText.TextScaled = true
mainText.Font = Enum.Font.GothamBold
mainText.Parent = frame

-- Tạo TextLabel
local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, 0, 0.3, 0)
label.Position = UDim2.new(0, 0, 0, 0)
label.Text = "GUI của tao"
label.TextColor3 = Color3.new(1,1,1)
label.BackgroundTransparency = 1
label.Parent = frame

-- Tạo nút đóng
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 100, 0, 40)
closeButton.Position = UDim2.new(0.5, -50, 0.7, 0)
closeButton.Text = "Đóng"
closeButton.Parent = frame

closeButton.MouseButton1Click:Connect(function()
	screenGui:Destroy()
end)

local copyButton = Instance.new("TextButton")
copyButton.Size = UDim2.new(0, 100, 0, 40)
copyButton.Position = UDim2.new(0.5, 60, 0.7, 0) -- lệch qua phải nút Đóng
copyButton.Text = "Copy"
copyButton.BackgroundColor3 = Color3.fromRGB(70,70,70)
copyButton.TextColor3 = Color3.new(1,1,1)
copyButton.Parent = frame

copyButton.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard("https://example.com")
    else
        warn("Executor không hỗ trợ setclipboard")
    end
end)




