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
            Text = "Đã phát hiện thấy bản đồ: " .. mapName .. "\nĐang tải tập lệnh...",
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
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nibamako08-code/UI/refs/heads/main/ALLSTARVN.lua", true))()

elseif PlaceId == 14890802310 then
    -- 2. Bizarre Lineage
    NotifyLoad("Bizarre Lineage")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nibamako08-code/UI/refs/heads/main/BizarreLineageVN.lua", true))()

elseif PlaceId == 286090429 then
    -- 3. Arsenal
    NotifyLoad("Arsenal")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nibamako08-code/UI/refs/heads/main/AVN.lua", true))()

elseif PlaceId == 70845479499574 or PlaceId == 11520107397 or PlaceId == 11520108331 then
    -- 4. Bite By Night (รองรับหลาย PlaceId ในแมพเดียวกัน)
    NotifyLoad("Bite By Night")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nibamako08-code/UI/refs/heads/main/BBNVN.lua", true))()

elseif PlaceId == 9391468976 then
    -- 5. Jujutsu Shenanigans
    NotifyLoad("Jujutsu Shenanigans")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nibamako08-code/UI/refs/heads/main/JJSVN.lua", true))()

elseif GameId == 4658598196 then
    -- 6. attack on titan revolution
    NotifyLoad("attack on titan revolution")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nibamako08-code/UI/refs/heads/main/AOTRVN.lua", true))()



else
    local StarterGui = game:GetService("StarterGui")
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = "⭐ Star Hub",
            Text = "Hiện chưa có kịch bản hỗ trợ nào cho bản đồ này!\n(Place ID: " .. tostring(PlaceId) .. ")",
            Duration = 10
        })
    end)
    warn("[Star Hub] Unsupported Game. PlaceId: " .. tostring(PlaceId) .. " | GameId: " .. tostring(GameId))
end
