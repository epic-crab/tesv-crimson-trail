;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__0C014C59 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
QF_CrimsonTrailQuest_0C014C14 CrimsonTrailQuest = getOwningQuest() as QF_CrimsonTrailQuest_0C014C14
SSE_QF_ccBGSSSE064_MiscQuest_0200081A ElvenHunter_MiscQuest = CrimsonTrailQuest.ElvenHunter_MiscQuest as SSE_QF_ccBGSSSE064_MiscQuest_0200081A
ElvenHunter_MiscQuest.Alias_Bounty.getReference().activate(Game.getPlayer())
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
