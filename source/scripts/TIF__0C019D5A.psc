;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__0C019D5A Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
SSE_QF_ccBGSSSE058_MiscQuest_05000819 q = CrimsonTrailQuest.SteelSoldier_MiscQuest as SSE_QF_ccBGSSSE058_MiscQuest_05000819
q.Alias_Note.getReference().activate(PlayerRef)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
QF_CrimsonTrailQuest_0C014C14 Property CrimsonTrailQuest Auto
Actor Property PlayerRef Auto