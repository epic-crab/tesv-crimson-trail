scriptName ccBGSSSE060_ArmorCounterScript extends Quest

Int property StageToSet auto
Quest property MyQuest auto
Int property ArmorThreshold auto

Int ArmorCount

function ArmorPickedUp()
	ArmorCount += 1
	if ArmorCount >= ArmorThreshold
		MyQuest.SetStage(StageToSet)
	endIf
endFunction
