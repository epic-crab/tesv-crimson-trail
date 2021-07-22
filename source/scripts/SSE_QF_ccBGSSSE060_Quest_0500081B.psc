;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 14
Scriptname SSE_QF_ccBGSSSE060_Quest_0500081B Extends Quest Hidden

;BEGIN ALIAS PROPERTY PlayerAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PlayerAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Fathrys
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Fathrys Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Armor02
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Armor02 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Armor04
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Armor04 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY FakeChest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_FakeChest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Armor01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Armor01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Poem
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Poem Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Armor05
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Armor05 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY chest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_chest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Skeleton
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Skeleton Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Key
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Key Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ClawKeyhole
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ClawKeyhole Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Armor03
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Armor03 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
if(isObjectiveDisplayed(45))
	setObjectiveCompleted(45)
endIf
SetObjectiveDisplayed(50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
SetObjectiveCompleted(10)
SetObjectiveFailed(40, true)
SetObjectiveDisplayed(45, true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
if(isObjectiveDisplayed(45))
	setObjectiveCompleted(45)
endIf
SetStage(55)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
setObjectiveDisplayed(30)
SetObjectiveDisplayed(40)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
SetObjectiveDisplayed(10)
SetObjectiveDisplayed(20)
;zombie fathrys
Actor FathrysRef = Alias_Fathrys.getReference() as Actor
FathrysReanimateSelf.cast(FathrysRef)
Alias_Skeleton.getReference().activate(Alias_Skeleton.getReference())
;check door, sometimes OnLoad doesn't work right
CT_DragonClawActivator keyhole = Alias_ClawKeyhole.getReference() as CT_DragonClawActivator
keyhole.getLinkedRef().playAnimation("snapClosed")
keyhole.startOpen = false
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
CompleteAllObjectives()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetObjectiveCompleted(20)
SetObjectiveDisplayed(30)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
SetActive(CrimsonTrailQuest.isActive())
SetObjectiveDisplayed(10)
Alias_Fathrys.GetReference().EnableNoWait()
Alias_Skeleton.GetReference().Enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
SetObjectiveDisplayed(51, false)
if(IsObjectiveFailed(40))
	SetObjectiveFailed(40, false)
	SetObjectiveDisplayed(40, true, true)
endIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
Quest Property CrimsonTrailQuest Auto
Spell Property FathrysReanimateSelf Auto
