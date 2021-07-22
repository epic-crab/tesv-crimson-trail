Scriptname CT_PlayerDiamondClawMonitorAlias extends ReferenceAlias  

Quest q
MiscObject Property DiamondClaw Auto

Event OnInit()
	q = getOwningQuest()
	AddInventoryEventFilter(DiamondClaw)
endEvent

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	if(q.getStage() >= 50 && q.getStage() < 55)
		q.setObjectiveDisplayed(50, false)
		q.setObjectiveDisplayed(51, true, true)
	endIf
endEvent

Event OnItemRemoved(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer)
	if(q.getStage() >= 50 && q.getStage() < 55)
		q.setObjectiveDisplayed(50, true, true)
		q.setObjectiveDisplayed(51, false)
	endIf
endEvent