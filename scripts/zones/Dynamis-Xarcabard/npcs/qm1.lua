-----------------------------------
-- Area: Dynamis Xarcabard
--  NPC: ??? (Spawn when mega is defeated)
-----------------------------------
package.loaded["scripts/zones/Dynamis-Xarcabard/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/titles");
require("scripts/globals/keyitems");
require("scripts/zones/Dynamis-Xarcabard/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    player:addTitle(DYNAMISXARCABARD_INTERLOPER); -- Add title

    if (player:hasKeyItem(dsp.kis.HYDRA_CORPS_BATTLE_STANDARD) == false) then
        player:setVar("DynaXarcabard_Win",1);
        player:addKeyItem(dsp.kis.HYDRA_CORPS_BATTLE_STANDARD);
        player:messageSpecial(KEYITEM_OBTAINED,dsp.kis.HYDRA_CORPS_BATTLE_STANDARD);
    end

end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;