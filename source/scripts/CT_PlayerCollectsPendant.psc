Scriptname CT_PlayerCollectsPendant extends ReferenceAlias  

FormList Property CrimsonPendantsList Auto

Event OnInit()
	addInventoryEventFilter(CrimsonPendantsList)
	goToState("waiting")
endEvent

state waiting
	Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
		getOwningQuest().setObjectiveDisplayed(1)
		goToState("done")
	endEvent
endState