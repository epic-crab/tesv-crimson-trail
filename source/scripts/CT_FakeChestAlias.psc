Scriptname CT_FakeChestAlias extends ReferenceAlias  

int property minStage auto
int property stageToSet Auto

Event OnActivate(ObjectReference actronaut)
	Quest q = getOwningQuest()
	int stage = q.getStage()
	if(stage >= minStage && stage < stageToSet)
		q.setStage(stageToSet)
	endIf
endEvent