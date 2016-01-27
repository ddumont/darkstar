-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Fayeewah
-- Standard Merchant NPC
-----------------------------------

local text = require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");
require("scripts/globals/shop");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    
    player:showText(npc, text.FAYEEWAH_SHOP_DIALOG);

    local stock =
    {
    0x15c2,68,        -- Cup of Chai
     0x15c4,2075}        -- Irmik Helvasi
 
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
