Scriptname FlameCloakInCombatEffect extends ActiveMagicEffect

Spell Property FlameCloak Auto
Keyword Property LocTypeClearable Auto
Keyword Property MagicCloak Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	float spellCost = FlameCloak.GetEffectiveMagickaCost(akCaster) as float
	if(akCaster.getActorValue("Magicka") >= spellCost && !akCaster.HasMagicEffectWithKeyword(MagicCloak))
		akCaster.damageActorValue("Magicka", spellCost)
		FlameCloak.cast(akCaster)
	endIf
endEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	if(akCaster.getCurrentLocation() && !akCaster.getCurrentLocation().hasKeyword(LocTypeClearable))
		akCaster.dispelSpell(FlameCloak)
	endIf
endEvent