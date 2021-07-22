scriptName ccBGSSSE063_ArmorScript extends Quest

Int property ArmorThreshold auto
Quest property MyQuest auto
Int property StageToSet auto

Int ArmorCount

function ArmorPickedUp()
	ArmorCount += 1
	if ArmorCount >= ArmorThreshold
		MyQuest.SetStage(StageToSet)
	endIf
endFunction
