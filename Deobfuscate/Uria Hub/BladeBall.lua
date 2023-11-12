local a = game:GetService("ReplicatedStorage");
local b = game:GetService("Players");
local c = b.LocalPlayer or b.PlayerAdded:Wait();
local d = a:WaitForChild("Remotes", 8999999488);
local e = workspace:WaitForChild("Balls", 8999999488);
local function f(g)
    if ((typeof(g) == "Instance") and g:IsA("BasePart") and g:IsDescendantOf(e) and (g:GetAttribute("realBall") == true)) then
        return true;
    end
end
local function h()
    return c.Character and c.Character:FindFirstChild("Highlight");
end
local function i()
    d:WaitForChild("ParryButtonPress"):Fire();
end
e.ChildAdded:Connect(function(g)
    if not f(g) then
        return;
    end
    local j = g.Position;
    local k = tick();
    g:GetPropertyChangedSignal("Position"):Connect(function()
        if h() then
            local l = (g.Position - workspace.CurrentCamera.Focus.Position).Magnitude;
            local m = (j - g.Position).Magnitude;
            if ((l / m) <= 10) then
                i();
            end
        end
        if ((tick() - k) >= (1 / 60)) then
            k = tick();
            j = g.Position;
        end
    end);
end);
