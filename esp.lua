local lp = game.Players.LocalPlayer

local function createEsp(player)
    if player == lp then return end

    local function setup(char)
        local head = char:WaitForChild("Head", 10)
        if not head then return end

        local highlight = Instance.new("Highlight")
        highlight.Parent = char
        highlight.FillColor = Color3.fromRGB(255, 0, 0)
        highlight.OutlineColor = Color3.new(1, 1, 1)
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop

        local gui = Instance.new("BillboardGui")
        gui.Size = UDim2.new(4, 0, 1, 0)
        gui.AlwaysOnTop = true
        gui.StudsOffset = Vector3.new(0, 3, 0)
        gui.Adornee = head
        gui.Parent = char

        local text = Instance.new("TextLabel")
        text.Size = UDim2.new(1, 0, 1, 0)
        text.BackgroundTransparency = 1
        text.TextColor3 = Color3.fromRGB(255, 0, 0)
        text.Font = Enum.Font.Montserrat
        text.Text = player.Name
        text.TextScaled = true
        text.Parent = gui
    end

    player.CharacterAdded:Connect(setup)
    if player.Character then setup(player.Character) end
end

for _, player in ipairs(game.Players:GetPlayers()) do
    createEsp(player)
end

game.Players.PlayerAdded:Connect(createEsp)
