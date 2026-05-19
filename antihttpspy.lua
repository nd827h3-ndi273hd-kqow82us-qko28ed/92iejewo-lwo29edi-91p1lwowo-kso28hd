local TOKEN = "blackassnigga"
local realPrint = print
local realWarn = warn
local realError = error

local function isAllowed(args)
    return args[#args] == TOKEN
end

local function stripToken(args)
    local t = table.clone(args)
    table.remove(t, #t)
    return t
end

-- hooks
hookfunction(print, function(...)
    local args = {...}
    if isAllowed(args) then
        return realPrint(table.unpack(stripToken(args)))
    end
end)

hookfunction(warn, function(...)
    local args = {...}
    if isAllowed(args) then
        return realWarn(table.unpack(stripToken(args)))
    end
end)

hookfunction(error, function(...)
    local args = {...}
    if isAllowed(args) then
        return realError(table.unpack(stripToken(args)))
    end
end)

-- writefile / appendfile guards
local oldwrite
oldwrite = hookfunction(writefile, function(file, content)
    local low = string.lower(content)
    if string.find(low, 'https://') or string.find(low, '//') then return end
    return oldwrite(file, content)
end)

local oldappend
oldappend = hookfunction(appendfile, function(file, content)
    local low = string.lower(content)
    if string.find(low, 'https://') or string.find(low, '//') then return end
    return oldappend(file, content)
end)

-- destroy url textlabels/buttons
game.DescendantAdded:Connect(function(c)
    if c and (c:IsA('TextLabel') or c:IsA('TextButton') or c:IsA('Message')) then
        if string.find(string.lower(c.Text), 'https://') then
            c:Destroy()
        end
    end
end)

-- nuke console globals
getgenv().rconsoletitle  = nil
getgenv().rconsoleprint  = nil
getgenv().rconsolewarn   = nil
getgenv().rconsoleinfo   = nil
getgenv().rconsolerr     = nil

-- lock renv
getrenv().print = function() end
getrenv().warn  = function() end
getrenv().error = function() end

-- lock genv
getgenv().print         = function() end
getgenv().warn          = function() end
getgenv().error         = function() end
getgenv().clonefunction = function() end

-- destroy devconsole on spawn
game.CoreGui.ChildAdded:Connect(function(c)
    if string.lower(c.Name) == 'devconsolemaster' then
        task.wait(0.1)
        c:Destroy()
    end
end)

-- namecall block
local oldNamecall
oldNamecall = hookmetamethod(game, '__namecall', newcclosure(function(self, ...)
    local method = string.lower(getnamecallmethod())
    local args = {...}

    if method == 'print' then
        if isAllowed(args) then
            return realPrint(table.unpack(stripToken(args)))
        end
        return
    end

    if method == 'warn' then
        if isAllowed(args) then
            return realWarn(table.unpack(stripToken(args)))
        end
        return
    end

    if method == 'error' then
        if isAllowed(args) then
            return realError(table.unpack(stripToken(args)))
        end
        return
    end

    if method == 'rconsoleprint'
    or method == 'rconsoleinfo'
    or method == 'rconsolewarn'
    or method == 'rconsoleerr' then
        return task.wait(9e9)
    end

    if method == 'rendernametag' then return end

    return oldNamecall(self, ...)
end))

-- clear output every frame + nuke devconsole
task.spawn(function()
    game:GetService('RunService').RenderStepped:Connect(function()
        game:GetService('LogService'):ClearOutput()
        local dc = game.CoreGui:FindFirstChild('DevConsoleMaster')
        if dc then dc:Destroy() end
    end)
end)
