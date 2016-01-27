-----------------------------------
-- Area: Dynamis Xarcabard
-- MOB: Statue Prototype
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/dynamis");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob,target)
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer,ally)
    
    local mobID = mob:getID();
    
    -- Time Bonus: 143 150
    if (mobID == 17330912 and mob:isInBattlefieldList() == false) then
        ally:addTimeToDynamis(30);
        mob:addInBattlefieldList();
    elseif (mobID == 17330919 and mob:isInBattlefieldList() == false) then
        ally:addTimeToDynamis(30);
        mob:addInBattlefieldList();
    end
    
end;