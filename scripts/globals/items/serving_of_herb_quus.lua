-----------------------------------------
-- ID: 4559
-- Item: serving_of_herb_quus
-- Food Effect: 180Min, All Races
-----------------------------------------
-- Dexterity 1
-- Mind -1
-- Ranged ACC % 7
-- Ranged ACC Cap 10
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
    local result = 0;
    if (target:hasStatusEffect(EFFECT_FOOD) == true or target:hasStatusEffect(EFFECT_FIELD_SUPPORT_FOOD) == true) then
        result = 246;
    end
    return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
    target:addStatusEffect(EFFECT_FOOD,0,0,10800,4559);
end;

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
    target:addMod(MOD_DEX, 1);
    target:addMod(MOD_MND, -1);
    target:addMod(MOD_FOOD_RACCP, 7);
    target:addMod(MOD_FOOD_RACC_CAP, 10);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target,effect)
    target:delMod(MOD_DEX, 1);
    target:delMod(MOD_MND, -1);
    target:delMod(MOD_FOOD_RACCP, 7);
    target:delMod(MOD_FOOD_RACC_CAP, 10);
end;
