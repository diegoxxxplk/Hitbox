-- Hitbox Expander Simples para BLUE LOCK: RIVALS
-- Criado para teste autorizado

local size = 10 -- Tamanho do hitbox
local transparency = 0.5 -- Transparência da hitbox
local color = Color3.fromRGB(255, 0, 0) -- Cor da hitbox (vermelho)

for _,v in pairs(game:GetService("Players"):GetPlayers()) do
    if v ~= game.Players.LocalPlayer then
        if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            local part = v.Character.HumanoidRootPart
            part.Size = Vector3.new(size, size, size)
            part.Transparency = transparency
            part.BrickColor = BrickColor.new(color)
            part.Material = Enum.Material.Neon
            part.CanCollide = false
        end
    end
end

print("Hitbox Expander carregado com sucesso!")
