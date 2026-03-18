local lp = game.Players.LocalPlayer


for _, player in game.Players:GetPlayers() do
    if player ~= lp then
        local char = player.Character
        if not char then return end
        
        local light = Instance.new(`Highlight`)
        light.Parent = char.PrimaryPart
        light.Adornee = char
        light.OutlineColor = Color3.new(0, 0, 0)
        light.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    end
end
