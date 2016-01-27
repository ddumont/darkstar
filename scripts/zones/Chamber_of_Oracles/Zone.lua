-----------------------------------
--
-- Zone: Chamber_of_Oracles (168)
--
-----------------------------------

require("scripts/globals/settings");
local text = require("scripts/zones/Chamber_of_Oracles/TextIDs");

-----------------------------------
-- onInitialize
-----------------------------------

function onInitialize(zone)
end;

-----------------------------------        
-- onConquestUpdate        
-----------------------------------        

function onConquestUpdate(zone, updatetype)
    local players = zone:getPlayers();
    
    for name, player in pairs(players) do
        conquestUpdate(zone, player, updatetype, text.CONQUEST_BASE);
    end
end;


-----------------------------------        
-- onZoneIn        
-----------------------------------        

function onZoneIn(player,prevZone)        
    local cs = -1;    
    if ((player:getXPos() == 0) and (player:getYPos() == 0) and (player:getZPos() == 0)) then    
        player:setPos(-177.804,-2.765,-37.893,179);
    end    
    return cs;    
end;        

-----------------------------------        
-- onRegionEnter        
-----------------------------------        

function onRegionEnter(player,region)    
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
