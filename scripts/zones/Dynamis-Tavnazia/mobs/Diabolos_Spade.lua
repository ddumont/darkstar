-----------------------------------
-- Area:
-- MOB: Diabolos_Spade
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/keyitems");
local text = require("scripts/zones/Dynamis-Tavnazia/TextIDs");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    if (ally:hasKeyItem(DYNAMIS_TAVNAZIA_SLIVER ) == false) then
        ally:addKeyItem(DYNAMIS_TAVNAZIA_SLIVER);
        ally:messageSpecial(text.KEYITEM_OBTAINED,DYNAMIS_TAVNAZIA_SLIVER);
    end
    ally:addTitle(NIGHTMARE_AWAKENER);
end;