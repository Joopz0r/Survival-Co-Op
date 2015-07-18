function BagOfGoldPicked( event )
	item = event.ability
	item:EmitSound("GoldBagDrop")
	
	for i = 0, DOTA_MAX_TEAM_PLAYERS-1 do
		if PlayerResource:IsValidPlayer(i) then
			PlayerResource:ModifyGold(i, item:GetCurrentCharges()/2, true, DOTA_ModifyGold_Unspecified )
		end
	end
end
