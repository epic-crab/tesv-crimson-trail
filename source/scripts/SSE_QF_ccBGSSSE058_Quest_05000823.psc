;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 13
Scriptname SSE_QF_ccBGSSSE058_Quest_05000823 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Dossier000
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Dossier000 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY TRIGGER
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_TRIGGER Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Blade
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Blade Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Note01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Note01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GuardImperial
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GuardImperial Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BodyImperial
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BodyImperial Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Dossier
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Dossier Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Note03
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Note03 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GuardSons
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GuardSons Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BodySons
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BodySons Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
SetObjectiveCompleted(50)
SetObjectiveDisplayed(60)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetActive(CrimsonTrailQuest.isActive())
if GetStage() < 30
	SetObjectiveDisplayed(20)
endIf
PlayerRef.AddPerk(ccBGSSSE058_NoPickPocketPerk)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
SetObjectiveCompleted(60)
setStage(1000)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
Alias_GuardImperial.GetRef().Delete()
Alias_GuardSons.GetRef().Delete()
Alias_Note03.GetRef().EnableNoWait()
SetObjectiveCompleted(20)
SetObjectiveCompleted(30)
if GetStage() < 50
	SetObjectiveDisplayed(40)
endIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
CompleteAllObjectives()
PlayerRef.RemovePerk(ccBGSSSE058_NoPickPocketPerk)
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
Alias_Blade.GetRef().EnableNoWait()
Alias_TRIGGER.GetRef().EnableNoWait()
SetObjectiveCompleted(40)
SetObjectiveDisplayed(50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
Alias_GuardImperial.GetRef().Delete()
Alias_GuardSons.GetRef().Delete()
Alias_Note03.GetRef().EnableNoWait()
SetObjectiveCompleted(20)
if GetStage() < 40
	SetObjectiveDisplayed(30)
endIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
perk property ccBGSSSE058_NoPickPocketPerk auto
Actor Property PlayerRef auto
Quest Property CrimsonTrailQuest Auto  
