-----------------------------------
-- Area: Lower Jeuno
--  NPC: Navisse
-- Standard Info NPC
local text = require("scripts/zones/Lower_Jeuno/TextIDs");
require("scripts/globals/pathfind");

local path = {
-- -59.562683, 6.000051, -90.890404,
-58.791367, 6.000050, -91.663391,
-58.021465, 6.000049, -92.432144,
-58.729881, 6.000051, -91.577568,
-60.351879, 6.000053, -89.835815,
-61.099354, 6.000054, -89.034248,
-61.841427, 5.999946, -88.238564,
-62.769325, 5.999948, -87.244301,
-61.750378, 5.999948, -87.684868,
-60.796600, 5.999947, -88.208214,
-55.475166, 5.999943, -91.271210,
-56.590668, 5.999943, -91.245201,
-57.651192, 6.000052, -91.002350,
-64.134392, 6.000052, -89.460915,
-63.261021, 6.000051, -90.107605,
-62.330879, 6.000051, -90.679604,
-61.395359, 6.000050, -91.235107,
-56.591644, 6.000047, -94.066406,
-57.208908, 6.000048, -93.245895,
-57.934330, 6.000049, -92.435081,
-59.788624, 6.000052, -90.439583,
-61.832211, 5.999946, -88.248795,
-62.574249, 5.999948, -87.453148,
-61.832058, 5.999946, -88.248627,
-61.089920, 6.000054, -89.044273,
-60.348049, 6.000053, -89.840111,
-59.043877, 6.000051, -91.238251,
-58.301846, 6.000050, -92.033958,
-57.467026, 6.000048, -92.929070,
-56.536987, 6.000047, -93.926826,
-57.528469, 6.000047, -93.482582,
-58.476944, 6.000048, -92.949654,
-59.416409, 6.000049, -92.400879,
-64.235306, 6.000051, -89.563835,
-64.000816, 6.000054, -88.482338,
-63.516331, 5.999947, -87.539917,
-62.444843, 5.999948, -87.352570,
-61.468765, 5.999947, -87.831436,
-60.520329, 5.999947, -88.364532,
-55.100037, 5.999943, -91.488144,
-56.063160, 5.999944, -90.932312,
-62.719467, 5.999948, -87.093468,
-62.064899, 5.999947, -87.960884,
-61.338562, 5.999946, -88.770836,
-59.579746, 6.000052, -90.663826,
-58.177391, 6.000050, -92.167343,
-57.435341, 6.000048, -92.963005,
-56.734436, 6.000047, -93.714989,
-57.492855, 6.000049, -92.901787,
-58.251190, 6.000050, -92.088486,
-59.364170, 6.000051, -90.894829,
-61.039413, 6.000054, -89.098907,
-61.784184, 5.999946, -88.300293,
-62.804745, 5.999948, -87.206451,
-60.463631, 6.000053, -89.715942,
-59.721657, 6.000052, -90.511711,
-58.974190, 6.000051, -91.313248,
-58.232239, 6.000050, -92.109024,
-56.840717, 6.000047, -93.600716,
-57.914623, 6.000048, -93.276276,
-58.855755, 6.000048, -92.730408,
-64.140175, 6.000051, -89.619812,
-63.025597, 6.000052, -89.751106,
-61.954758, 6.000052, -89.984474,
-60.887684, 6.000052, -90.234573,
-55.190853, 5.999943, -91.590721,
-55.368877, 6.000050, -92.667923,
-55.841885, 6.000048, -93.664970,
-56.916370, 6.000048, -93.400879,
-57.705578, 6.000049, -92.652748,
-58.456089, 6.000050, -91.865067,
-60.405739, 6.000053, -89.778008,
-61.147854, 6.000054, -88.982376,
-61.889904, 5.999946, -88.186691,
-62.637497, 5.999948, -87.385239,
-63.643429, 6.000055, -87.880524,
-64.248825, 6.000053, -88.784004,
-63.455921, 6.000052, -89.526733,
-62.418514, 6.000052, -89.852493,
-61.363335, 6.000052, -90.117607,
-55.142048, 5.999943, -91.602325,
-55.358624, 6.000050, -92.679016,
-55.842934, 6.000048, -93.675148,
-56.919590, 6.000048, -93.408241,
-57.710354, 6.000049, -92.649918,
-58.459896, 6.000050, -91.861336,
-60.409424, 6.000053, -89.774185,
-61.151508, 6.000054, -88.978500,
-62.848709, 5.999948, -87.159264,
-61.829231, 5.999948, -87.629791,
-60.951675, 5.999947, -88.117493,
-55.395309, 5.999943, -91.317513,
-56.522537, 5.999943, -91.263893,
-57.586517, 6.000052, -91.018196,
-64.081299, 6.000052, -89.473526,
-63.209583, 6.000051, -90.135269,
-62.270042, 6.000050, -90.714821,
-61.334797, 6.000050, -91.270729,
-56.586208, 6.000047, -94.069595,
-64.130554, 6.000051, -89.625450,
-56.496498, 6.000047, -94.122322,
-57.173595, 6.000048, -93.271568,
-57.904095, 6.000049, -92.465279,
-59.571453, 6.000052, -90.672951,
};

function onSpawn(npc)
    npc:initNpcAi();
    npc:setPos(pathfind.first(path));
    onPath(npc);
end;

function onPath(npc)
    pathfind.patrol(npc, path);
end;

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:startEvent(0x0099);
    npc:wait(-1);
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
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
    npc:wait(0);
end;
