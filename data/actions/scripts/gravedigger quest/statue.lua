function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if not target:isItem() or target.actionid ~= 4636 then
		return false
	end

	if player:getStorageValue(Storage.GravediggerOfDrefia.Mission24) == 1 and player:getStorageValue(Storage.GravediggerOfDrefia.Mission25) < 1 then
		player:setStorageValue(Storage.GravediggerOfDrefia.Mission25,1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, '<BOOOOOOOONGGGGGG> A slow throbbing, like blood pulsing, runs through the floor.')
		player:getPosition():sendMagicEffect(CONST_ME_SOUND_GREEN)
	end
	return true
end