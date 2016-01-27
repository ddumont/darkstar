-----------------------------------
-- Area:  Pso'Xja
--  NPC:  _i94 (Stone Gate)
-- Notes: Blue Bracelet Door
-- @pos -330.000 14.074 -261.600 9
-----------------------------------

local text = require("scripts/zones/PsoXja/TextIDs");
require("scripts/globals/keyitems");

-----------------------------------
-- onTrade
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger
-----------------------------------

function onTrigger(player,npc) 

    local Z=player:getZPos();
    
    if (Z >= -261) then
        if (player:hasKeyItem(595)==true) then -- Blue Bracelet
            player:startEvent(0x003d);
        else
            player:messageSpecial(text.ARCH_GLOW_BLUE);    
        end    
    elseif (Z <= -262) then
        player:messageSpecial(text.CANNOT_OPEN_SIDE);
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

function onEventFinish(player,csid,option,npc)    
end;