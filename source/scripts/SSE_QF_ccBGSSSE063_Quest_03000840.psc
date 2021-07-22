;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 32
Scriptname SSE_QF_ccBGSSSE063_Quest_03000840 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Blade
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Blade Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SeptimNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SeptimNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY WineNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_WineNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY DratheaNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DratheaNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Beggar
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Beggar Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY HundredNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_HundredNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY PrayerNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PrayerNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BreadNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BreadNote Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
PlayerRef.RemoveItem(Gold001, 1)
SetStage(40)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
SetStage(45)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_31
Function Fragment_31()
;BEGIN CODE
PlayerRef.RemoveItem(BYOHFoodPotatoBread01A, 1)
SetStage(34)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
FavorJobsBeggarsAbility.Cast(PlayerRef, PlayerRef)
FavorJobsBeggarMessage.Show()
SetStage(45)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN CODE
CompleteAllObjectives()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
PlayerRef.RemoveItem(FoodSolitudeSpicedWine, 1)
SetStage(35)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_27
Function Fragment_27()
;BEGIN CODE
PlayerRef.RemoveItem(BYOHFoodWineBottle04, 1)
SetStage(35)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
SetStage(40)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
PlayerRef.RemoveItem(FoodBread01B, 1)
SetStage(34)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_25
Function Fragment_25()
;BEGIN CODE
SetObjectiveCompleted(40)
if IsStageDone(45)
SetStage(50)
endIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
SetObjectiveDisplayed(50, true)
objectreference BladeREF = Alias_Blade.GetRef()
BladeREF.EnableNoWait(false)
BladeREF.Moveto(ccBGSSSE063_DratheaStandREF)
if IsStageDone(36)
	BladeREF.removeItem(Alias_BreadNote.getReference())
	BladeREF.removeItem(Alias_HundredNote.getReference())
	BladeREF.removeItem(Alias_SeptimNote.getReference())
	BladeREF.removeItem(Alias_WineNote.getReference())
elseIf IsStageDone(35)
	BladeREF.removeItem(Alias_BreadNote.getReference())
	BladeREF.removeItem(Alias_HundredNote.getReference())
	BladeREF.removeItem(Alias_SeptimNote.getReference())
	BladeREF.removeItem(Alias_PrayerNote.getReference())
elseIf IsStageDone(34)
	BladeREF.removeItem(Alias_HundredNote.getReference())
	BladeREF.removeItem(Alias_SeptimNote.getReference())
	BladeREF.removeItem(Alias_PrayerNote.getReference())
	BladeREF.removeItem(Alias_WineNote.getReference())
elseIf IsStageDone(2)
	BladeREF.removeItem(Alias_BreadNote.getReference())
	BladeREF.removeItem(Alias_SeptimNote.getReference())
	BladeREF.removeItem(Alias_PrayerNote.getReference())
	BladeREF.removeItem(Alias_WineNote.getReference())
else
	BladeREF.removeItem(Alias_BreadNote.getReference())
	BladeREF.removeItem(Alias_HundredNote.getReference())
	BladeREF.removeItem(Alias_PrayerNote.getReference())
	BladeREF.removeItem(Alias_WineNote.getReference())
endIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
PlayerRef.RemoveItem(FoodWineBottle02A, 1)
SetStage(35)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
SetObjectiveDisplayed(20)
Alias_Beggar.GetReference().EnableNoWait(false)
SetActive(CrimsonTrailQuest.isActive())
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_28
Function Fragment_28()
;BEGIN CODE
Alias_Blade.GetActorRef().SetAV("Aggression", 1.0)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
PlayerRef.RemoveItem(Gold001, 100)
SetStage(40)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_29
Function Fragment_29()
;BEGIN CODE
PlayerRef.RemoveItem(BYOHFoodBraidedBread01)
SetStage(34)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
SetObjectiveCompleted(50)
Alias_Beggar.GetRef().DisableNoWait(false)
SetStage(1000)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
PlayerRef.RemoveItem(FoodWineBottle02, 1)
SetStage(35)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_30
Function Fragment_30()
;BEGIN CODE
PlayerRef.RemoveItem(BYOHFoodGarlicBread01, 1)
SetStage(34)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
SetStage(40)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
PlayerRef.RemoveItem(FoodWineAltoA, 1)
SetStage(35)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
SetObjectiveCompleted(30)
SetObjectiveDisplayed(40)
if IsStageDone(46)
SetStage(50)
endIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
PlayerRef.RemoveItem(FoodWineAlto, 1)
SetStage(35)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_26
Function Fragment_26()
;BEGIN CODE
PlayerRef.RemoveItem(BYOHFoodWineBottle03, 1)
SetStage(35)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
SetObjectiveCompleted(20)
SetObjectiveDisplayed(30)
SetObjectiveDisplayed(40)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
PlayerRef.RemoveItem(FoodBread01A, 1)
SetStage(34)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
Quest property WICourier auto
potion property FoodWineBottle02A auto
potion property FoodWineAlto auto
miscobject property Gold001 auto
potion property FoodBread01A auto
potion property BYOHFoodWineBottle04 auto
potion property FoodBread01B auto
potion property FoodSolitudeSpicedWine auto
potion property FoodWineBottle02 auto
objectreference property ccBGSSSE063_DratheaStandREF auto
potion property BYOHFoodGarlicBread01 auto
spell property FavorJobsBeggarsAbility auto
message property FavorJobsBeggarMessage auto
potion property BYOHFoodPotatoBread01A auto
potion property FoodWineAltoA auto
potion property BYOHFoodWineBottle03 auto
potion property BYOHFoodBraidedBread01 auto
Actor Property PlayerRef Auto
Quest Property CrimsonTrailQuest Auto