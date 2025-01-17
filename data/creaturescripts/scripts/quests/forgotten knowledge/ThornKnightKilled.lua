function onKill(creature, target)
        local targetMonster = target:getMonster()
        if not targetMonster then
                return true
        end

        if targetMonster:getName():lower() ~= 'mounted thorn knight' then
                return true
        end

        local player = creature:getPlayer()
        if player:getStorageValue(Storage.ForgottenKnowledge.ThornKnightKilled)  == -1 then
                player:setStorageValue(Storage.ForgottenKnowledge.ThornKnightKilled, 1)
        end
        return true
end
