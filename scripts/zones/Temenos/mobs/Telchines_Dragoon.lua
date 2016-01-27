-----------------------------------
-- Area: Temenos N T    
--  NPC: Telchines_Dragoon
-----------------------------------
require("scripts/globals/limbus");
local text = require("scripts/zones/Temenos/TextIDs");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
        GetMobByID(16928791):updateEnmity(target);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer,ally)
    GetNPCByID(16928770+452):setStatus(STATUS_NORMAL);
end;
