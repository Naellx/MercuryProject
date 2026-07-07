print("══════════════════════════════════════════════")
print("        MERCURY PROJECT | PUBLIC LOADER")
print("══════════════════════════════════════════════")
print("🌐 Website : https://mercuryproject.site")
print("══════════════════════════════════════════════")

local URL = "https://raw.githubusercontent.com/Naellx/MercuryProject/main/Main.lua"

local Success, Response = pcall(function()
    return game:HttpGet(URL)
end)

if not Success then
    error("[Mercury Project] Failed to connect to server.")
end

local Chunk, Err = loadstring(Response)

if not Chunk then
    error("[Mercury Project] "..tostring(Err))
end

Chunk()
