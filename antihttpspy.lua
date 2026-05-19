-- Anti HttpSpy V2 by jv3xz0

local TOKEN = "pussyassnigga"

local oldPrint = print
local oldWarn = warn
local oldError = error
local oldWriteFile = writefile
local oldAppendFile = appendfile

local function hasToken(args)
    for _, v in ipairs(args) do
        if tostring(v) == TOKEN then
            return true
        end
    end

    return false
end

local function cleanArgs(args)
    local new = {}

    for _, v in ipairs(args) do
        if tostring(v) ~= TOKEN then
            table.insert(new, v)
        end
    end

    return new
end

local function containsBlockedText(args)
    for _, v in ipairs(args) do
        local text = tostring(v):lower()

        if text:find("https://") or text:find("//") then
            return true
        end
    end

    return false
end

-- PRINT
hookfunction(print, function(...)
    local args = {...}

    if not hasToken(args) then
        return
    end

    local cleaned = cleanArgs(args)

    return oldPrint(unpack(cleaned))
end)

-- WARN
hookfunction(warn, function(...)
    local args = {...}

    if not hasToken(args) then
        return
    end

    local cleaned = cleanArgs(args)

    return oldWarn(unpack(cleaned))
end)

-- ERROR
hookfunction(error, function(...)
    local args = {...}

    if not hasToken(args) then
        return
    end

    local cleaned = cleanArgs(args)

    return oldError(unpack(cleaned))
end)

-- WRITEFILE
hookfunction(writefile, function(file, content)
    local text = tostring(content):lower()

    if text:find("https://") or text:find("//") then
        return
    end

    return oldWriteFile(file, content)
end)

-- APPENDFILE
hookfunction(appendfile, function(file, content)
    local text = tostring(content):lower()

    if text:find("https://") or text:find("//") then
        return
    end

    return oldAppendFile(file, content)
end)

-- DESTROY URL TEXT
game.DescendantAdded:Connect(function(c)
    pcall(function()
        if c:IsA("TextLabel")
        or c:IsA("TextButton")
        or c:IsA("Message") then

            local text = tostring(c.Text):lower()

            if text:find("https://") then
                c:Destroy()
            end
        end
    end)
end)

-- DISABLE CONSOLE FUNCTIONS
getgenv().rconsoletitle = nil
getgenv().rconsoleprint = nil
getgenv().rconsolewarn = nil
getgenv().rconsoleinfo = nil
getgenv().rconsoleerr = nil

-- BLOCK CLONEFUNCTION
getgenv().clonefunction = function()
    return nil
end

-- DEV CONSOLE REMOVER
game.CoreGui.ChildAdded:Connect(function(c)
    pcall(function()
        if c.Name:lower() == "devconsolemaster" then
            task.wait(0.1)
            c:Destroy()
        end
    end)
end)

-- NAMECALL HOOK
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local method = tostring(getnamecallmethod()):lower()

    if method == "rconsoleprint"
    or method == "rconsoleinfo"
    or method == "rconsolewarn"
    or method == "rconsoleerr" then
        return task.wait(9e9)
    end

    if method == "rendernametag" then
        return
    end

    return oldNamecall(self, ...)
end))

-- LOG CLEANER
task.spawn(function()
    local LogService = game:GetService("LogService")
    local RunService = game:GetService("RunService")

    RunService.RenderStepped:Connect(function()
        pcall(function()
            LogService:ClearOutput()

            local console = game.CoreGui:FindFirstChild("DevConsoleMaster")

            if console then
                console:Destroy()
            end
        end)
    end)
end)
