-----------------------------------
-- Area:  Sacrarium
--  NPC:  qm5 (???)
-- Notes: Used to spawn Old Prof. Mariselle
-- @pos 102.670 -3.111 -127.318 28
-----------------------------------

local text = require("scripts/zones/Sacrarium/TextIDs");
require("scripts/globals/keyitems");

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

    local OldProfessor = 16891970;

    if (GetServerVariable("Old_Prof_Spawn_Location") == 5) then
        if (player:getCurrentMission(COP) == THE_SECRETS_OF_WORSHIP and player:getVar("PromathiaStatus") == 3 and player:hasKeyItem(RELIQUIARIUM_KEY)==false and GetMobAction(OldProfessor) == 0) then 
            player:messageSpecial(text.EVIL_PRESENCE);
            SpawnMob(OldProfessor,300):updateClaim(player);
            GetMobByID(OldProfessor):setPos(npc:getXPos()+1, npc:getYPos(), npc:getZPos()+1); -- Set Prof. spawn x and z pos. +1 from NPC
        else
            player:messageSpecial(text.DRAWER_SHUT);
        end            
    elseif (player:getCurrentMission(COP) == THE_SECRETS_OF_WORSHIP and player:getVar("PromathiaStatus") == 4 and player:hasKeyItem(RELIQUIARIUM_KEY)==false) then
        player:addKeyItem(RELIQUIARIUM_KEY);
        player:messageSpecial(text.KEYITEM_OBTAINED,RELIQUIARIUM_KEY);    
    else
        player:messageSpecial(text.DRAWER_OPEN);
        player:messageSpecial(text.DRAWER_EMPTY);        
    end    
end;

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onEventFinish Action
-----------------------------------

function onEventFinish(player,csid,option)
end;
