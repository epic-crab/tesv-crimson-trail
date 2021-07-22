Scriptname CT_KeyholeAlias extends ReferenceAlias  

CT_DragonClawActivator selfRef

int property minStage auto
int property stageToSet Auto
int property openedStage auto

Event OnActivate(ObjectReference actronaut)
	if(!selfRef)
		selfRef = getReference() as CT_DragonClawActivator
	endIf
	Quest q = getOwningQuest()
	int stage = q.getStage()
	if(stage >= minStage && stage < stageToSet)
		q.setStage(stageToSet)
	endIf
	if(actronaut.getItemCount(selfRef.myClawObject) >= 1)
		q.setStage(openedStage)
	endIf
endEvent