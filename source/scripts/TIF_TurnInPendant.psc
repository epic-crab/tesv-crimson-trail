;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF_TurnInPendant Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
turnIn(akSpeaker, PendantAlias)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
CTPendantTracker Property tracker auto
ReferenceAlias Property PendantAlias auto
LeveledItem Property reward auto
Actor Property PlayerRef auto

function turnIn(Actor receiver, ReferenceAlias a)
	PlayerRef.removeItem(a.getReference(), akOtherContainer = receiver)
	PlayerRef.addItem(reward)
	string aliasName = a.getName()
	if(aliasName == "UrgnokPendant")
		tracker.UrgnokTurnedIn = true
	elseif(aliasName == "FathrysPendant")
		tracker.FathrysTurnedIn = true
	elseif(aliasName == "SkjolPendant")
		tracker.SkjolTurnedIn = true
	elseif(aliasName == "ErwanPendant")
		tracker.ErwanTurnedIn = true
	elseif(aliasName == "AntoniusPendant")
		tracker.AntoniusTurnedIn = true
	elseif(aliasName == "AesraelPendant")
		tracker.AesraelTurnedIn = true
	elseif(aliasName == "PeladiusPendant")
		tracker.PeladiusTurnedIn = true
	elseif(aliasName == "TyraPendant")
		tracker.TyraTurnedIn = true
	endIf
	tracker.checkIfDone()
endFunction