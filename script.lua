-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")
local incorrect = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.101834863, 0, 0.373493969, 0)
Frame.Size = UDim2.new(0, 270, 0, 187)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0.129629627, 0, 0.625668466, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "ключ"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Position = UDim2.new(0.129629627, 0, 0.203208551, 0)
TextBox.Size = UDim2.new(0, 200, 0, 50)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "ключ сюда пжж"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

incorrect.Name = "incorrect"
incorrect.Parent = Frame
incorrect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
incorrect.BackgroundTransparency = 1.000
incorrect.Position = UDim2.new(0.51111114, 0, -0.540106952, 0)
incorrect.Size = UDim2.new(0, 591, 0, 50)
incorrect.Visible = false
incorrect.Font = Enum.Font.GothamBold
incorrect.Text = "ИДИ НАХУЙ НЕВЕРНЫЙ КЛЮЧ"
incorrect.TextColor3 = Color3.fromRGB(255, 0, 0)
incorrect.TextScaled = true
incorrect.TextSize = 14.000
incorrect.TextWrapped = true

-- Scripts:

local function ELYRP_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.Activated:Connect(function()
		if script.Parent.Parent.TextBox.Text == "хуй" then
			game.Players.LocalPlayer:Kick("вы хуй")
		else
			script.Parent.Parent.incorrect.Visible = true
			wait(2)
			script.Parent.Parent.incorrect.Visible = false
		end
	end)
end
coroutine.wrap(ELYRP_fake_script)()
