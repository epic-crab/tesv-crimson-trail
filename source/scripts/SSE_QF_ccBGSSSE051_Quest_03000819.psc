;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 14
Scriptname SSE_QF_ccBGSSSE051_Quest_03000819 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Gunther
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Gunther Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Erwan
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Erwan Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ErwanJournal
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ErwanJournal Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BountyNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BountyNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Jarl
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Jarl Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Steward
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Steward Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY bandit
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_bandit Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Letter
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Letter Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Ring
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Ring Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ErwanBook
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ErwanBook Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
SetObjectiveCompleted(24, true)
	SetObjectiveCompleted(25, true)
	if GetStage() < 40
		SetObjectiveDisplayed(30)
	else
		setstage(100)
	endIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
SetObjectiveCompleted(10, true)
	if GetStage() < 30
		SetObjectiveDisplayed(20)
	endIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
setActive(CrimsonTrailQuest.isActive())
SetObjectiveDisplayed(10)
Alias_Erwan.GetRef().EnableNoWait(false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
SetObjectiveCompleted(24, true)
if !GetStageDone(30)
	SetObjectiveDisplayed(25)
endIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
CompleteAllObjectives()
ccBGSSSE051_MiscQuestAliasFillers.Stop()
;usually the game gives you daedric mail here
;unfortunately you gave beth your todd bucks and not me, so i am not as generous
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
SetObjectiveFailed(10, true)
SetObjectiveCompleted(20, true)
if !GetStageDone(30) && !GetStageDone(25)
	SetObjectiveDisplayed(24)
endIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
SetObjectiveCompleted(30, true)
setstage(100)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
Quest property ccBGSSSE051_MiscQuestAliasFillers auto
Quest property ccBGSSSE051_MiscQuest auto
Quest property CrimsonTrailQuest auto
