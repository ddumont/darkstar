-----------------------------------
-- Area: Apollyon NW
--  NPC: Millenary Mossback

-----------------------------------

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
      local mobX = mob:getXPos();
    local mobY = mob:getYPos();
    local mobZ = mob:getZPos();
    GetNPCByID(16932864+109):setPos(mobX,mobY,mobZ);
    GetNPCByID(16932864+109):setStatus(STATUS_NORMAL);
end;