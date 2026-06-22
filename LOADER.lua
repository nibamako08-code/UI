--[[
=========================================================================
⭐ STAR HUB - UNIVERSAL LOADER ⭐
=========================================================================
    - ผู้สร้าง: Star Hub Team / nibamako08
    - ระบบ: ตรวจจับแมพที่เล่นอยู่ และรันสคริปต์ให้ตรงกับแมพอัตโนมัติ
=========================================================================
]]

if not game:IsLoaded() then 
    game.Loaded:Wait() 
end

local PlaceId = game.PlaceId
local GameId = game.GameId
local CoreGui = game:GetService("CoreGui")

local function NotifyLoad(mapName)
    local StarterGui = game:GetService("StarterGui")
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = "⭐ Star Hub Loader",
            Text = "ตรวจพบแมพ: " .. mapName .. "\nกำลังโหลดสคริปต์...",
            Duration = 5
        })
    end)
    print("[Star Hub] Loading script for: " .. mapName)
end

-- ==========================================
-- 🔄 ระบบแยกทาง (Game Detection Routing)
-- ==========================================

if GameId == 1720936166 then
    -- 1. All Star Tower Defense
    NotifyLoad("All Star Tower Defense")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nibamako08-code/xd/refs/heads/main/obfuscated_script-1782114387933.lua.txt", true))()

elseif PlaceId == 93978595733734 then
    -- 2. Violent District 
    NotifyLoad("Violent District")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nibamako08-code/UI/refs/heads/main/DV"))()

elseif GameId == 5130394318 then
    -- 2. Bizarre Lineage
    NotifyLoad("Bizarre Lineage")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nibamako08-code/UI/refs/heads/main/BizarreLineage.lua", true))()

elseif PlaceId == 17687504411 then
    -- 3. All Star Tower Defense X
    NotifyLoad("All Star Tower Defense X")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nibamako08-code/UI/refs/heads/main/X.lua", true))()

elseif PlaceId == 286090429 then
    -- 4. Arsenal
    NotifyLoad("Arsenal")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nibamako08-code/UI/refs/heads/main/ASN.lua", true))()

elseif PlaceId == 70845479499574 or PlaceId == 11520107397 or PlaceId == 11520108331 then
    -- 5. Bite By Night (รองรับหลาย PlaceId ในแมพเดียวกัน)
    NotifyLoad("Bite By Night")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nibamako08-code/UI/refs/heads/main/BBN.lua", true))()

elseif PlaceId == 9391468976 then
    -- 6. Jujutsu Shenanigans
    NotifyLoad("Jujutsu Shenanigans")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nibamako08-code/UI/refs/heads/main/JJS.lua", true))()

    elseif PlaceId == 115875349872417 then
    -- 6. REDLINER
    NotifyLoad("REDLINER")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nibamako08-code/xd/refs/heads/main/LR", true))()

        elseif PlaceId == 126691165749976 then
    -- 6. REDLINER
    NotifyLoad("REDLINER")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nibamako08-code/xd/refs/heads/main/LR", true))()

        elseif PlaceId == 94987506187454 then
    -- 6. REDLINER
    NotifyLoad("REDLINER")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nibamako08-code/xd/refs/heads/main/LR", true))()

        elseif PlaceId == 126691165749976 then
    -- 6. REDLINER
    NotifyLoad("REDLINER")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nibamako08-code/xd/refs/heads/main/LR", true))()

elseif GameId == 4658598196 then
    -- 7. attack on titan revolution
    NotifyLoad("attack on titan revolution")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nibamako08-code/UI/refs/heads/main/AOTR.lua", true))()



else
    local StarterGui = game:GetService("StarterGui")
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = "⭐ Star Hub",
            Text = "ยังไม่มีสคริปต์รองรับสำหรับแมพนี้!\n(Place ID: " .. tostring(PlaceId) .. ")",
            Duration = 10
        })
    end)
    warn("[Star Hub] Unsupported Game. PlaceId: " .. tostring(PlaceId) .. " | GameId: " .. tostring(GameId))
end
