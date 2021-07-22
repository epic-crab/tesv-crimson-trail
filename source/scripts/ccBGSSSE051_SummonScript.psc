scriptName ccBGSSSE051_SummonScript extends ObjectReference

spell property mySpell auto

function OnEquipped(Actor akActor)
	if akActor == game.GetPlayer()
		mySpell.Cast(akActor as ObjectReference, none)
	endIf
endFunction
