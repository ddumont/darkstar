-----------------------------------
-- Area: The Eldieme Necropolis
--  NPC: Leviathan's Gate
-- @pos 249 -34 -60 195
-----------------------------------

local text = require("scripts/zones/The_Eldieme_Necropolis/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    if (npc:getAnimation() == 9) then
        player:messageSpecial(text.SOLID_STONE);
    end
    return 0;
end;
-- 
-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;