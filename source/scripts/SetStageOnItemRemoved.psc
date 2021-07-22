Scriptname SetStageOnItemRemoved extends ReferenceAlias  

Event OnItemRemoved(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer)
	if(!targetQuest)
		targetQuest = getOwningQuest()
	endIf
	if((minStage < 0 || targetQuest.getStage() >= minStage) || (maxStage < 0 || targetQuest.getStage() <= maxStage))
		targetQuest.setStage(stage)
	endIf
endEvent

Quest Property targetQuest auto
int property stage auto
int property minStage = -1 auto
int property maxStage = -1 auto