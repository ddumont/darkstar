-----------------------------------
-- Area: Zeruhn Mines (172)
-- Mob: Soot Crab
-----------------------------------

require("scripts/globals/groundsofvalor");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer,ally)
    checkGoVregime(ally,mob,628,2);
end;
