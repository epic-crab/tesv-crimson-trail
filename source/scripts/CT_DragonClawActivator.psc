Scriptname CT_DragonClawActivator extends ObjectReference  

import debug
import utility
import game
import sound

; the door we're manipulating
OBJECTREFERENCE myDoor

; does it start open
BOOL PROPERTY startOpen AUTO

; //the start and stop sounds
SOUND PROPERTY startingSound AUTO
SOUND PROPERTY stoppingSound AUTO

INT soundID

EVENT onLoad()
	myDoor = getLinkedREF()
	IF(startOpen)
		myDoor.playAnimation("SnapOpen")
	ELSE
		myDoor.playAnimation("SnapClosed")
	ENDIF
endEVENT

MiscObject property myClawObject Auto
{The claw used by the activator.}

Message property ActivateWithoutObjMessage Auto
{Message if the player tries to activate this without the claw.}


auto State Ready
	Event OnActivate(ObjectReference triggerRef)
		if (game.GetPlayer().GetItemCount(myClawObject) >= 1)
			goToState("busy")
			playAnimation("Trigger01")
			Utility.Wait(3)
			rotateDoor()
		Else
			ActivateWithoutObjMessage.show()
		EndIf
	EndEvent
EndState

function rotateDoor()
	IF(startOpen)
		myDoor.playAnimationandWait("RotateClosed", "snapClosed")
	ELSE
		myDoor.playAnimationandWait("RotateOpen", "snapOpen")
	ENDIF
	startOpen = !startOpen
	goToState("Ready")
endFunction