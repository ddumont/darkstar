-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: HomePoint#4
-- @pos  -99 -6 -68 50
require("scripts/globals/settings");
local text = require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");
require("scripts/globals/homepoint");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

    homepointMenu( player, 0x21ff, 108);
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

    if (csid == 0x21ff) then

        if (option == 1) then    
            player:setHomePoint();
            player:messageSpecial(text.HOMEPOINT_SET);
        else
            hpTeleport( player, option);
        end
    end
end;