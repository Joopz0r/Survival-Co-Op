function BagOfGoldPicked( event )
	item = event.ability
	PrecacheResource( "soundfile", "soundevents/game_sounds_custom.vsndevts", context)
	item:EmitSound("GoldBagDrop")
	
	for i = 0, DOTA_MAX_TEAM_PLAYERS-1 do
		if PlayerResource:IsValidPlayer(i) then
			PlayerResource:ModifyGold(i, item:GetCurrentCharges(), true, DOTA_ModifyGold_Unspecified )
		end
	end
end
