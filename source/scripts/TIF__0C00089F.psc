;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__0C00089F Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
QF_CrimsonTrailQuest_0C014C14 CrimsonTrailQuest = getOwningQuest() as QF_CrimsonTrailQuest_0C014C14
SSE_QF_ccBGSSSE060_MiscQuest_0500081A StuddedDragonscale_MiscQuest = CrimsonTrailQuest.StuddedDragonscale_MiscQuest as SSE_QF_ccBGSSSE060_MiscQuest_0500081A
ReferenceAlias WyrmsAndBones = StuddedDragonscale_MiscQuest.Alias_Book
WyrmsAndBones.getReference().activate(PlayerRef)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef  Auto  
