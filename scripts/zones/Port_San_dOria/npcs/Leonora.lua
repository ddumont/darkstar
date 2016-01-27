-----------------------------------
-- Area: Port San d'Oria
<<<<<<< HEAD
-- NPC:  Leonora
=======
--  NPC: Leonora
>>>>>>> Safe, cacheable requires in lua.
-- Involved in Quest: 
-- @zone 232
-- @pos -24 -8 15
-----------------------------------
<<<<<<< HEAD
package.loaded["scripts/zones/Port_San_dOria/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/quests");
require("scripts/zones/Port_San_dOria/TextIDs");
=======

require("scripts/globals/settings");
require("scripts/globals/quests");
local text = require("scripts/zones/Port_San_dOria/TextIDs");
>>>>>>> Safe, cacheable requires in lua.

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
-- "Flyers for Regine" conditional script
FlyerForRegine = player:getQuestStatus(SANDORIA,FLYERS_FOR_REGINE);

    if (FlyerForRegine == 1) then
        count = trade:getItemCount();
        MagicFlyer = trade:hasItemQty(532,1);
        if (MagicFlyer == true and count == 1) then
<<<<<<< HEAD
            player:messageSpecial(FLYER_REFUSED);
=======
            player:messageSpecial(text.FLYER_REFUSED);
>>>>>>> Safe, cacheable requires in lua.
        end
    end
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    
    if (player:getZPos() >= 12) then 
        player:startEvent(0x0206);
    end
    
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
<<<<<<< HEAD
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
=======
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
>>>>>>> Safe, cacheable requires in lua.
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
<<<<<<< HEAD
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;




=======
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

>>>>>>> Safe, cacheable requires in lua.
