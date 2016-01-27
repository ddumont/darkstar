-----------------------------------
-- Area:  Castle Oztroja
--  NPC:  Brass Door
-- Notes: Open by handle near password 2
-- @pos -60 24 -77 151
-----------------------------------

local text = require("scripts/zones/Castle_Oztroja/TextIDs");

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    
    if (npc:getAnimation() == 9) then
        player:messageSpecial(text.ITS_LOCKED);
    end    
    
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("upCSID: %u",csid);
    -- printf("upRESULT: %u",option);
end;

-----------------------------------
-- onEventFinish Action
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;