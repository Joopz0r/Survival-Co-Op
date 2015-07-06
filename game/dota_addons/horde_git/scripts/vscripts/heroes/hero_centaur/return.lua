--[[
	Author: Noya
	Date: 9.1.2015.
	Does base damage plus a percent of the hero strength
]]
function Return( event )
	local attacker = event.attacker
	if attacker:IsRealHero() then
		
		-- Variables
		local caster = event.caster
		local attacker = event.attacker
		local ability = event.ability
		local targetSTR = attacker:GetStrength()
		local str_return = ability:GetLevelSpecialValueFor( "strength_pct" , ability:GetLevel() - 1  ) * 0.01
		local damage = ability:GetLevelSpecialValueFor( "return_damage" , ability:GetLevel() - 1  )
		local damageType = ability:GetAbilityDamageType()
		local return_damage = damage + ( targetSTR * str_return )
		
		-- Damage
		ApplyDamage({ victim = attacker, attacker = caster, damage = return_damage, damage_type = damageType })

		--print("done "..return_damage)
	
	end
end