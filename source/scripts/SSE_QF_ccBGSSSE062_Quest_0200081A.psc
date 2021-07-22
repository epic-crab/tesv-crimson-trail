;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 8
Scriptname SSE_QF_ccBGSSSE062_Quest_0200081A Extends Quest Hidden

;BEGIN ALIAS PROPERTY Orc
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Orc Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
SetObjectiveCompleted(10)
SetStage(100)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetActive(CrimsonTrailQuest.isActive())
DwarvenMail_MiscQuest.setStage(30)
SetObjectiveDisplayed(10)
Alias_Orc.GetRef().EnableNoWait()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
CompleteAllObjectives()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
Quest Property DwarvenMail_MiscQuest Auto
Quest Property CrimsonTrailQuest Auto