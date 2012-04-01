-----------------------------------
-- Ability: Souleater
-----------------------------------
 
require("scripts/globals/settings");
require("scripts/globals/status");

-----------------------------------
-- OnUseAbility
-----------------------------------

function OnUseAbility(player, target, ability)
   player:addStatusEffect(EFFECT_SOULEATER,1,0,60);
end;