-----------------------------------
-- Area: Port Bastok
--  NPC: Valeriano
-- Standard Merchant NPC
-- Confirmed shop stock, August 2013
-----------------------------------

require("scripts/globals/shop");
local text = require("scripts/zones/Port_Bastok/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:showText(npc, text.VALERIANO_SHOP_DIALOG);

    local stock =
    {
    
        0x112A,    10,       --Ginger Cookie  
        0x43C1,    43,       --Flute 
        0x43C3,   990,       --Piccolo 
        0x1399,   585,       --Scroll of Scop's Operetta  
        0x139A, 16920,       --Scroll of Puppet's Operetta 
        0x1395,  2916,       --Scroll of Fowl Aubade 
        0x13A3,  2059,       --Scroll of Advancing March 
        0x13D0, 90000,       --Scroll of Goddess's Hymnus 
        0x13B9, 27140,       --Scroll of Earth Carol II
        0x13BB, 28520,       --Scroll of Water Carol II
        0x1384,123880        --Scroll of Mage's Ballad III
    } 
    showShop(player, STATIC, stock);

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
