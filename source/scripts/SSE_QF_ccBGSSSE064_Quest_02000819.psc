;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname SSE_QF_ccBGSSSE064_Quest_02000819 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Aesrael
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Aesrael Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY AesNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AesNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY chest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_chest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY wolf
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_wolf Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Key
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Key Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
Actor AesraelRef = Alias_Aesrael.getReference() as Actor
Actor WolfRef = Alias_Wolf.getReference() as Actor
Actor PlayerRef = Game.getPlayer()
AesraelRef.setRelationshipRank(PlayerRef, -3)
AesraelRef.setActorValue("Aggression", 1)
WolfRef.setRelationshipRank(PlayerRef, -3)
WolfRef.setActorValue("Aggression", 1)
AesraelRef.startCombat(PlayerRef)
WolfRef.startCombat(PlayerRef)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveDisplayed(10)
SetActive(CrimsonTrailQuest.isActive())
Alias_Aesrael.GetReference().EnableNoWait(false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
CompleteAllObjectives()
CrimsonTrailQuest.setStage(63)
stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
Quest Property CrimsonTrailQuest Auto
