scriptName ccBGSSSE063_OnActivateScript extends ReferenceAlias

Int property StageToSet auto
Int property StageToLookFor auto

function OnActivate(ObjectReference akActionRef)
	quest MyQuest = self.GetOwningQuest()
	if MyQuest.GetStage() >= StageToLookFor
		MyQuest.SetStage(StageToSet)
	endIf
endFunction
