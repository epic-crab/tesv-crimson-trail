scriptName ccBGSSSE057_ArmorScript extends Quest

Quest property MyQuest auto
Int property ArmorThreshold auto
Int property StageToSet auto

Int ArmorCount

function ArmorPickedUp()
	ArmorCount += 1
	if ArmorCount >= ArmorThreshold
		MyQuest.SetStage(StageToSet)
	endIf
endFunction
