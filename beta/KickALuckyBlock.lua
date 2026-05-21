local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

-- themes
WindUI:AddTheme({ Name = "Dark",            Accent = Color3.fromHex("#FF0F7B"), Dialog = Color3.fromHex("#161616"), Outline = Color3.fromHex("#FF0F7B"), Text = Color3.fromHex("#FFFFFF"), Placeholder = Color3.fromHex("#7a7a7a"), Background = Color3.fromHex("#101010"), Button = Color3.fromHex("#52525b"), Icon = Color3.fromHex("#FF0F7B") })
WindUI:AddTheme({ Name = "Light",           Accent = Color3.fromHex("#FF0F7B"), Dialog = Color3.fromHex("#F0F0F0"), Outline = Color3.fromHex("#FF0F7B"), Text = Color3.fromHex("#000000"), Placeholder = Color3.fromHex("#888888"), Background = Color3.fromHex("#FFFFFF"), Button = Color3.fromHex("#D1D1D1"), Icon = Color3.fromHex("#FF0F7B") })
WindUI:AddTheme({ Name = "Purple Dream",    Accent = Color3.fromHex("#A855F7"), Dialog = Color3.fromHex("#1A1025"), Outline = Color3.fromHex("#A855F7"), Text = Color3.fromHex("#FFFFFF"), Placeholder = Color3.fromHex("#7a7a7a"), Background = Color3.fromHex("#0F0A1A"), Button = Color3.fromHex("#3B2060"), Icon = Color3.fromHex("#A855F7") })
WindUI:AddTheme({ Name = "Ocean Blue",      Accent = Color3.fromHex("#0EA5E9"), Dialog = Color3.fromHex("#0C1A2E"), Outline = Color3.fromHex("#0EA5E9"), Text = Color3.fromHex("#FFFFFF"), Placeholder = Color3.fromHex("#7a7a7a"), Background = Color3.fromHex("#071525"), Button = Color3.fromHex("#1E3A5F"), Icon = Color3.fromHex("#0EA5E9") })
WindUI:AddTheme({ Name = "Forest Green",    Accent = Color3.fromHex("#22C55E"), Dialog = Color3.fromHex("#0A1F0F"), Outline = Color3.fromHex("#22C55E"), Text = Color3.fromHex("#FFFFFF"), Placeholder = Color3.fromHex("#7a7a7a"), Background = Color3.fromHex("#051209"), Button = Color3.fromHex("#14532D"), Icon = Color3.fromHex("#22C55E") })
WindUI:AddTheme({ Name = "Crimson Red",     Accent = Color3.fromHex("#EF4444"), Dialog = Color3.fromHex("#1A0A0A"), Outline = Color3.fromHex("#EF4444"), Text = Color3.fromHex("#FFFFFF"), Placeholder = Color3.fromHex("#7a7a7a"), Background = Color3.fromHex("#100505"), Button = Color3.fromHex("#7F1D1D"), Icon = Color3.fromHex("#EF4444") })
WindUI:AddTheme({ Name = "Sunset Orange",   Accent = Color3.fromHex("#F97316"), Dialog = Color3.fromHex("#1A1005"), Outline = Color3.fromHex("#F97316"), Text = Color3.fromHex("#FFFFFF"), Placeholder = Color3.fromHex("#7a7a7a"), Background = Color3.fromHex("#100A00"), Button = Color3.fromHex("#7C2D12"), Icon = Color3.fromHex("#F97316") })
WindUI:AddTheme({ Name = "Midnight Purple", Accent = Color3.fromHex("#7C3AED"), Dialog = Color3.fromHex("#12091F"), Outline = Color3.fromHex("#7C3AED"), Text = Color3.fromHex("#FFFFFF"), Placeholder = Color3.fromHex("#7a7a7a"), Background = Color3.fromHex("#0A0512"), Button = Color3.fromHex("#3B0764"), Icon = Color3.fromHex("#7C3AED") })
WindUI:AddTheme({ Name = "Cyan Glow",       Accent = Color3.fromHex("#06B6D4"), Dialog = Color3.fromHex("#071A1F"), Outline = Color3.fromHex("#06B6D4"), Text = Color3.fromHex("#FFFFFF"), Placeholder = Color3.fromHex("#7a7a7a"), Background = Color3.fromHex("#041014"), Button = Color3.fromHex("#164E63"), Icon = Color3.fromHex("#06B6D4") })
WindUI:AddTheme({ Name = "Rose Pink",       Accent = Color3.fromHex("#F43F5E"), Dialog = Color3.fromHex("#1A0A10"), Outline = Color3.fromHex("#F43F5E"), Text = Color3.fromHex("#FFFFFF"), Placeholder = Color3.fromHex("#7a7a7a"), Background = Color3.fromHex("#10040A"), Button = Color3.fromHex("#881337"), Icon = Color3.fromHex("#F43F5E") })
WindUI:AddTheme({ Name = "Golden Hour",     Accent = Color3.fromHex("#EAB308"), Dialog = Color3.fromHex("#1A1500"), Outline = Color3.fromHex("#EAB308"), Text = Color3.fromHex("#FFFFFF"), Placeholder = Color3.fromHex("#7a7a7a"), Background = Color3.fromHex("#100E00"), Button = Color3.fromHex("#713F12"), Icon = Color3.fromHex("#EAB308") })
WindUI:AddTheme({ Name = "Neon Green",      Accent = Color3.fromHex("#84CC16"), Dialog = Color3.fromHex("#0F1A05"), Outline = Color3.fromHex("#84CC16"), Text = Color3.fromHex("#FFFFFF"), Placeholder = Color3.fromHex("#7a7a7a"), Background = Color3.fromHex("#071002"), Button = Color3.fromHex("#365314"), Icon = Color3.fromHex("#84CC16") })
WindUI:AddTheme({ Name = "Electric Blue",   Accent = Color3.fromHex("#3B82F6"), Dialog = Color3.fromHex("#0A1020"), Outline = Color3.fromHex("#3B82F6"), Text = Color3.fromHex("#FFFFFF"), Placeholder = Color3.fromHex("#7a7a7a"), Background = Color3.fromHex("#050B14"), Button = Color3.fromHex("#1E3A8A"), Icon = Color3.fromHex("#3B82F6") })
WindUI:AddTheme({ Name = "Custom",          Accent = Color3.fromRGB(255, 15, 123), Dialog = Color3.fromHex("#161616"), Outline = Color3.fromRGB(255, 15, 123), Text = Color3.fromHex("#FFFFFF"), Placeholder = Color3.fromHex("#7a7a7a"), Background = Color3.fromHex("#101010"), Button = Color3.fromHex("#52525b"), Icon = Color3.fromRGB(255, 15, 123) })

WindUI:SetTheme("Dark")

local Window = WindUI:CreateWindow({
    Title = "Lucky Block V0id | Official",
    Icon = "box",
    Author = "by Jv3xz0",
    Folder = "V0id",
    Transparent = true,
    Theme = "Dark",
})

Window:ToggleTransparency(true)

local ConfigManager = Window.ConfigManager
local myConfig = ConfigManager:CreateConfig("LuckyBlock")

Window:EditOpenButton({
    Title = "V0id | Official",
    Icon = "monitor",
    CornerRadius = UDim.new(0, 16),
    StrokeThickness = 2,
    Color = ColorSequence.new(Color3.fromHex("FF0F7B"), Color3.fromHex("F89B29")),
    OnlyMobile = false,
    Enabled = true,
    Draggable = true,
})

-- services
local TweenService = game:GetService("TweenService")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local RS = game:GetService("ReplicatedStorage")

local lp = Players.LocalPlayer

-- remotes
local Network = RS:WaitForChild("Shared"):WaitForChild("Packages"):WaitForChild("Network")
local KickEvent = Network:WaitForChild("rev_KickEvent")
local TransformedEvent = Network:WaitForChild("rev_Transformed")

-- state
local autoKickActive = false
local kickThread = nil
local tweenSpeed = 1.5
local godmodeEnabled = false
local godmodeInitialized = false

local function stopAutoKick()
    autoKickActive = false
    if kickThread then
        task.cancel(kickThread)
        kickThread = nil
    end
end

local function runAutoKick()
    local c = lp.Character
    if not c then
        WindUI:Notify({ Title = "Auto Kick", Content = "No character found.", Duration = 3, Icon = "x" })
        autoKickActive = false
        return
    end

    local hrp = c:FindFirstChild("HumanoidRootPart")
    local areas = workspace:FindFirstChild("Areas")
    local kickReady = areas and areas:FindFirstChild("KickReady")

    if not hrp or not kickReady then
        WindUI:Notify({ Title = "Auto Kick", Content = "KickReady area not found.", Duration = 3, Icon = "x" })
        autoKickActive = false
        return
    end

    -- initial tp
    hrp.CFrame = CFrame.new(kickReady.Position)
    task.wait(0.2)

    while autoKickActive do
        c = lp.Character
        if not c then task.wait(1) continue end

        hrp = c:FindFirstChild("HumanoidRootPart")
        kickReady = workspace.Areas:FindFirstChild("KickReady")
        if not hrp or not kickReady then task.wait(1) continue end

        -- fire kick
        KickEvent:FireServer(1, 1)

        -- listen for rev_Transformed
        local fired = false
        local conn = TransformedEvent.OnClientEvent:Connect(function()
            fired = true
        end)

        local timeout = 0
        while not fired and autoKickActive do
            task.wait(0.1)
            timeout += 0.1
            if timeout >= 20 then break end
        end
        conn:Disconnect()

        if not autoKickActive then break end
        if not fired then task.wait(0.5) continue end

        -- wait 3 seconds
        local elapsed = 0
        while elapsed < 3 and autoKickActive do
            task.wait(0.1)
            elapsed += 0.1
        end
        if not autoKickActive then break end

        -- tween back to KickReady
        c = lp.Character
        hrp = c and c:FindFirstChild("HumanoidRootPart")
        kickReady = workspace.Areas:FindFirstChild("KickReady")
        if hrp and kickReady then
            local tween = TweenService:Create(
                hrp,
                TweenInfo.new(tweenSpeed, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
                { CFrame = CFrame.new(kickReady.Position) }
            )
            tween:Play()

            -- wait for tween with cancel support
            local tw = 0
            while tw < tweenSpeed and autoKickActive do
                task.wait(0.1)
                tw += 0.1
            end
            if not autoKickActive then tween:Cancel() break end
        end

        task.wait(0.2)
    end
end

local function initGodmode()
    local ok, initErr = pcall(function()
        local character = lp.Character or lp.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")

        local oldNamecall
        oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
            local method = getnamecallmethod()
            if godmodeEnabled and method == "TakeDamage" and self == humanoid then
                return nil
            end
            return oldNamecall(self, ...)
        end)

        local oldIndex
        oldIndex = hookmetamethod(game, "__newindex", function(self, property, value)
            if godmodeEnabled and self == humanoid then
                if property == "Health" and value < humanoid.Health then
                    return nil
                end
            end
            return oldIndex(self, property, value)
        end)

        local function connectHumanoid(hum)
            hum.HealthChanged:Connect(function(health)
                if godmodeEnabled and health < hum.MaxHealth then
                    pcall(function() hum.Health = hum.MaxHealth end)
                end
            end)

            hum.Died:Connect(function()
                if godmodeEnabled then
                    pcall(function()
                        hum.Health = hum.MaxHealth
                        task.wait(0.1)
                        character.Parent = workspace
                    end)
                end
            end)
        end

        connectHumanoid(humanoid)

        lp.CharacterAdded:Connect(function(newCharacter)
            pcall(function()
                character = newCharacter
                humanoid = newCharacter:WaitForChild("Humanoid")
                connectHumanoid(humanoid)
            end)
        end)

        for _, v in pairs(character:GetDescendants()) do
            if v:IsA("Script") or v:IsA("LocalScript") then
                pcall(function() v.Disabled = true end)
            end
        end
    end)

    if not ok then
        WindUI:Notify({ Title = "God Mode", Content = "Initialization failed.", Duration = 3, Icon = "x" })
        return false
    end
    return true
end

-- main tab
local MainTab = Window:Tab({
    Title = "Main",
    Icon = "box",
})

local AutoKickToggle = MainTab:Toggle({
    Title = "Auto Kick",
    Desc = "Automatically kicks lucky blocks repeatedly",
    Icon = "zap",
    Type = "Checkbox",
    Value = false,
    Callback = function(state)
        autoKickActive = state
        if state then
            WindUI:Notify({ Title = "Auto Kick", Content = "Auto Kick is ON.", Duration = 3, Icon = "zap" })
            kickThread = task.spawn(runAutoKick)
        else
            stopAutoKick()
            WindUI:Notify({ Title = "Auto Kick", Content = "Auto Kick is OFF.", Duration = 3, Icon = "x" })
        end
        myConfig:Save()
    end
})

local TweenSpeedSlider = MainTab:Slider({
    Title = "Tween Speed",
    Desc = "How fast it tweens back to KickReady",
    Step = 0.1,
    Value = {
        Min = 0.5,
        Max = 5,
        Default = 1.5,
    },
    Callback = function(value)
        tweenSpeed = value
        myConfig:Save()
    end
})

local GodModeToggle = MainTab:Toggle({
    Title = "God Mode",
    Desc = "Makes you invincible",
    Icon = "shield",
    Type = "Checkbox",
    Value = false,
    Callback = function(state)
        if state and not godmodeInitialized then
            godmodeInitialized = initGodmode()
            if not godmodeInitialized then
                -- init failed, leave toggle state as-is
                return
            end
        end
        godmodeEnabled = state
        if state then
            WindUI:Notify({ Title = "God Mode", Content = "God Mode is ON.", Duration = 3, Icon = "shield" })
        else
            WindUI:Notify({ Title = "God Mode", Content = "God Mode is OFF.", Duration = 3, Icon = "x" })
        end
        myConfig:Save()
    end
})

-- misc tab
local MiscTab = Window:Tab({
    Title = "Misc",
    Icon = "info",
})

local function getServers(cursor)
    local url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Asc&limit=100", game.PlaceId)
    if cursor then url = url .. "&cursor=" .. cursor end
    local ok, res = pcall(function() return game:HttpGet(url) end)
    return ok and HttpService:JSONDecode(res) or nil
end

local function getAllServers()
    local servers, cursor, attempts = {}, nil, 0
    repeat
        local data = getServers(cursor)
        if data and data.data then
            for _, s in pairs(data.data) do
                if s.id ~= game.JobId and s.playing < s.maxPlayers then
                    table.insert(servers, s)
                end
            end
            cursor = data.nextPageCursor
            attempts += 1
            task.wait(0.3)
        else break end
    until not cursor or attempts >= 10
    return servers
end

local function hopToSmallest()
    WindUI:Notify({ Title = "Server Hop", Content = "Finding smallest server...", Duration = 3, Icon = "search" })
    task.spawn(function()
        local servers = getAllServers()
        if #servers == 0 then
            WindUI:Notify({ Title = "Server Hop", Content = "No servers found!", Duration = 3, Icon = "x" })
            return
        end
        table.sort(servers, function(a, b) return a.playing < b.playing end)
        local t = servers[1]
        WindUI:Notify({ Title = "Server Hop", Content = string.format("Hopping to %d/%d players...", t.playing, t.maxPlayers), Duration = 3, Icon = "zap" })
        task.wait(1)
        TeleportService:TeleportToPlaceInstance(game.PlaceId, t.id, lp)
    end)
end

local function hopToRandom()
    WindUI:Notify({ Title = "Server Hop", Content = "Finding random server...", Duration = 3, Icon = "search" })
    task.spawn(function()
        local servers = getAllServers()
        if #servers == 0 then
            WindUI:Notify({ Title = "Server Hop", Content = "No servers found!", Duration = 3, Icon = "x" })
            return
        end
        local t = servers[math.random(1, #servers)]
        WindUI:Notify({ Title = "Server Hop", Content = string.format("Hopping to %d/%d players...", t.playing, t.maxPlayers), Duration = 3, Icon = "zap" })
        task.wait(1)
        TeleportService:TeleportToPlaceInstance(game.PlaceId, t.id, lp)
    end)
end

local function getGameName()
    local ok, res = pcall(function()
        local url = string.format("https://games.roblox.com/v1/games?universeIds=%d", game.PlaceId)
        local data = HttpService:JSONDecode(game:HttpGet(url))
        return data and data.data and data.data[1] and data.data[1].name or "Unknown Game"
    end)
    return ok and res or "Unknown Game"
end

local gameName = getGameName()

local ServerInfo = MiscTab:Paragraph({
    Title = "Server Information",
    Desc = string.format("Game: %s\nPlace ID: %d\nJob ID: %s\nPlayers: %d/%d",
        gameName, game.PlaceId, game.JobId, #Players:GetPlayers(), Players.MaxPlayers),
    Color = "Blue",
    Thumbnail = "rbxassetid://74135635728836",
    ThumbnailSize = 100,
})

task.spawn(function()
    while true do
        task.wait(5)
        ServerInfo:Set({
            Desc = string.format("Game: %s\nPlace ID: %d\nJob ID: %s\nPlayers: %d/%d",
                gameName, game.PlaceId, game.JobId, #Players:GetPlayers(), Players.MaxPlayers)
        })
    end
end)

MiscTab:Button({
    Title = "Hop Small Server",
    Desc = "Teleport to the server with the least players",
    Callback = hopToSmallest,
})

MiscTab:Button({
    Title = "Server Hop",
    Desc = "Teleport to a random available server",
    Callback = hopToRandom,
})

-- credits tab
local CreditsTab = Window:Tab({
    Title = "Credits",
    Icon = "heart",
})

CreditsTab:Paragraph({
    Title = "V0id | Official",
    Desc = "Made by Jv3xz0. Join our Discord server to stay updated with the latest features and scripts!",
    Color = "Red",
    Buttons = {
        {
            Icon = "users",
            Title = "Discord",
            Callback = function()
                setclipboard("https://discord.gg/pk6WbGqZ5X")
                WindUI:Notify({
                    Title = "Discord Link Copied!",
                    Content = "Discord invite link copied to clipboard!",
                    Duration = 3,
                    Icon = "check",
                })
            end,
        }
    }
})

-- settings tab
local SettingsTab = Window:Tab({
    Title = "Settings",
    Icon = "settings",
})

local ThemeDropdown = SettingsTab:Dropdown({
    Title = "Theme Selector",
    Values = {
        { Title = "Dark",            Icon = "moon" },
        { Title = "Light",           Icon = "sun" },
        { Title = "Purple Dream",    Icon = "sparkles" },
        { Title = "Ocean Blue",      Icon = "waves" },
        { Title = "Forest Green",    Icon = "tree-deciduous" },
        { Title = "Crimson Red",     Icon = "flame" },
        { Title = "Sunset Orange",   Icon = "sunset" },
        { Title = "Midnight Purple", Icon = "moon-star" },
        { Title = "Cyan Glow",       Icon = "zap" },
        { Title = "Rose Pink",       Icon = "heart" },
        { Title = "Golden Hour",     Icon = "sun" },
        { Title = "Neon Green",      Icon = "zap-off" },
        { Title = "Electric Blue",   Icon = "sparkle" },
        { Title = "Custom",          Icon = "palette" },
    },
    Value = "Dark",
    Callback = function(option)
        WindUI:SetTheme(option.Title)
        myConfig:Save()
    end
})

local ThemeColor = SettingsTab:Colorpicker({
    Title = "Custom Theme Color",
    Desc = "Select a custom accent color for the UI",
    Default = Color3.fromRGB(255, 15, 123),
    Callback = function(color)
        WindUI:AddTheme({
            Name = "Custom",
            Accent = color,
            Dialog = Color3.fromHex("#161616"),
            Outline = color,
            Text = Color3.fromHex("#FFFFFF"),
            Placeholder = Color3.fromHex("#7a7a7a"),
            Background = Color3.fromHex("#101010"),
            Button = Color3.fromHex("#52525b"),
            Icon = color
        })
        WindUI:SetTheme("Custom")
        myConfig:Save()
    end
})

SettingsTab:Button({
    Title = "Save Config",
    Desc = "Save current settings",
    Callback = function()
        myConfig:Save()
        WindUI:Notify({ Title = "Config", Content = "Config saved.", Duration = 3, Icon = "check" })
    end
})

SettingsTab:Button({
    Title = "Load Config",
    Desc = "Load saved settings",
    Callback = function()
        myConfig:Load()
        WindUI:Notify({ Title = "Config", Content = "Config loaded.", Duration = 3, Icon = "check" })
    end
})

-- register all
myConfig:Register("AutoKick", AutoKickToggle)
myConfig:Register("Theme", ThemeDropdown)
myConfig:Register("ThemeColor", ThemeColor)
myConfig:Register("GodMode", GodModeToggle)
myConfig:Register("TweenSpeed", TweenSpeedSlider)

Window:Tag({
    Title = "V1.0.0",
    Icon = "github",
    Color = Color3.fromHex("#30ff6a"),
    Radius = 0,
})

WindUI:Popup({
    Title = "Lucky Block V0id V1.0.0",
    Icon = "box",
    Content = "V1.0.0 — Auto Kick lucky blocks added.",
    Buttons = {
        {
            Title = "Close",
            Callback = function() end,
            Variant = "Tertiary",
        },
        {
            Title = "Join Discord",
            Icon = "users",
            Callback = function()
                setclipboard("https://discord.gg/pk6WbGqZ5X")
                WindUI:Notify({
                    Title = "Link Copied!",
                    Content = "Discord invite copied to clipboard!",
                    Duration = 3,
                    Icon = "check",
                })
            end,
            Variant = "Primary",
        }
    }
})

myConfig:Load()
MainTab:Select()
