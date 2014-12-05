function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if not target:isItem() or target.itemid ~= 5554 then
		return false
	end

	if math.random(100) ~= 1 then
		player:say("The golden fish escaped.", TALKTYPE_MONSTER_SAY)
		return true
	end

	player:say("You catch a golden fish in the bowl.", TALKTYPE_MONSTER_SAY)
	item:transform(8766)
	toPosition:sendMagicEffect(CONST_ME_MAGIC_BLUE)
	return true
end
