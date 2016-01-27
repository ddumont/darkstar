-----------------------------------
-- Area: Norg
--  NPC: Achika
-- Type: Tenshodo Merchant
-- @pos 1.300 0.000 19.259 252
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/keyitems");
local text = require("scripts/zones/Norg/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    if (player:hasKeyItem(TENSHODO_MEMBERS_CARD)) then
        if (player:sendGuild(60421,9,23,7)) then
            player:showText(npc, text.ACHIKA_SHOP_DIALOG);
        end
    else
        -- player:startEvent(0x0096);
    end
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

