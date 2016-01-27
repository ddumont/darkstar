-----------------------------------
-- Area: Lower Jeuno
--  NPC: Parike-Poranke
-- Type: Adventurer's Assistant
-- @zone: 245
-- @pos -33.161 -1 -61.303
--
-- Auto-Script: Requires Verification (Verfied by Brawndo)
-----------------------------------
local text = require("scripts/zones/Lower_Jeuno/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

    player:messageSpecial(text.PARIKE_PORANKE_DIALOG);
end;

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