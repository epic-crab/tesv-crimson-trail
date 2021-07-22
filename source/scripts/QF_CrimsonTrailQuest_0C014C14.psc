;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 23
Scriptname QF_CrimsonTrailQuest_0C014C14 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Erwan
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Erwan Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY TyraBloodFire
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_TyraBloodFire Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Urgnok
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Urgnok Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY PendantHoldingChest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PendantHoldingChest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY TyraPendant
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_TyraPendant Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Peladius
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Peladius Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY AntoniusPendant
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AntoniusPendant Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Hadring
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Hadring Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wilhelm
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Wilhelm Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Antonius
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Antonius Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Aesrael
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Aesrael Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Skjol
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Skjol Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY FathrysPendant
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_FathrysPendant Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY PeladiusPendant
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PeladiusPendant Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ErwanPendant
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ErwanPendant Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Fathrys
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Fathrys Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY AesraelChest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AesraelChest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY AesraelPendant
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AesraelPendant Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Elda
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Elda Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Faida
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Faida Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GeldisSadri
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GeldisSadri Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SkjolPendant
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SkjolPendant Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY UrgnokPendant
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_UrgnokPendant Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ValgaVinicia
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ValgaVinicia Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
;player has been issued the bounty for Aesrael
setStage(2)
checkInnkeepers()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
;player has learned about murder of guard in Dragon Bridge
setStage(2)
checkInnkeepers()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
;player has killed urgnok or otherwise obtained urgnok's pendant
SetObjectiveCompleted(UrgnokStage)
checkTyra()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
;player has received bounty for erwan
setStage(2)
checkInnkeepers()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
;player has talked to wilhelm about urgnok
setStage(2)
DwarvenMail_MiscQuest.setObjectiveDisplayed(10)
DwarvenMail_MiscQuest.setActive(isActive())
checkInnkeepers()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN CODE
CompleteAllObjectives()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
setStage(1000)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
SetObjectiveCompleted(AntoniusStage)
checkTyra()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
;player has found dead Skaal and Skjol's journal
setStage(2)
checkInnkeepers()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
checkCompatibility()
showLocateObjectives()
;startup individual quests
CrimsonTrailPendantSubquest.start()
DwarvenMail_MiscQuest.setStage(10)
DaedricMail_MiscQuest.setStage(10)
ElvenHunter_MiscQuest.setStage(10)
SteelSoldier_MiscQuest.setStage(10)
StuddedDragonscale_MiscQuest.setStage(10)
StalhrimFur_MiscQuest.Alias_Note.tryToEnable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
SetObjectiveCompleted(ErwanStage)
checkTyra()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetObjectiveCompleted(SkjolStage)
checkTyra()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
SetObjectiveCompleted(AesraelStage)
if(!isStageDone(63))
ElvenHunter_Quest.setStage(110)
endIf
checkTyra()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
;tyra killed
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
SetObjectiveCompleted(FathrysStage)
checkTyra()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
;player has discovered campsite of arena fan
setStage(2)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
;player has killed aesrael
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
;player has talked to Aesrael
ElvenHunter_Quest.setStage(15)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
SetObjectiveCompleted(PeladiusStage)
checkTyra()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
;player knows fathrys went to yorgrim overlook
setStage(2)
checkInnkeepers()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
BountyHunterEnableMarker.disable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN CODE
StalhrimFur_MiscQuest.setStage(10)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
bool property usingUrgnok = false auto hidden
bool property usingFathrys = false auto hidden
bool property usingSkjol = false auto hidden
bool property usingErwan = false auto hidden
bool property usingAntonius = false auto hidden
bool property usingAesrael = false auto hidden
bool property usingPeladius = false auto hidden
bool property usingTyra = false auto hidden

int property UrgnokStage = 10 autoreadonly
int property FathrysStage = 20 autoreadonly
int property SkjolStage = 30 autoreadonly
int property ErwanStage = 40 autoreadonly
int property AntoniusStage = 50 autoreadonly
int property AesraelStage = 60 autoreadonly
int property PeladiusStage = 70 autoreadonly
int property TyraStage = 80 autoreadonly

CrimsonTrailIntegration Property CT_SteelSoldierIntegration Auto
CrimsonTrailIntegration Property CT_ElvenHunterIntegration Auto
CrimsonTrailIntegration Property CT_EbonyPlateIntegration Auto
CrimsonTrailIntegration Property CT_DwarvenMailIntegration Auto
CrimsonTrailIntegration Property CT_StuddedDragonscaleIntegration Auto
CrimsonTrailIntegration Property CT_DaedricMailIntegration Auto
CrimsonTrailIntegration Property CT_StalhrimFurIntegration Auto
CrimsonTrailIntegration Property CT_ArcaneAccessoriesIntegration Auto

Quest Property DwarvenMail_MiscQuest Auto Hidden
Quest Property DaedricMail_MiscQuest Auto Hidden
Quest Property ElvenHunter_MiscQuest Auto Hidden
Quest Property ElvenHunter_Quest Auto Hidden
Quest Property EbonyPlate_MiscQuest Auto Hidden
Quest Property SteelSoldier_MiscQuest Auto Hidden
Quest Property StuddedDragonscale_MiscQuest Auto Hidden
SSE_QF_ccBGSSSE057_MiscQuest_0300081B Property StalhrimFur_MiscQuest Auto Hidden

function checkTyra()
	if( (!usingUrgnok   || IsStageDone(UrgnokStage)) && \
		(!usingFathrys  || IsStageDone(FathrysStage)) && \
		(!usingSkjol    || IsStageDone(SkjolStage)) && \
		(!usingErwan    || IsStageDone(ErwanStage)) && \
		(!usingAntonius || IsStageDone(AntoniusStage)) && \
		(!usingAesrael  || IsStageDone(AesraelStage)) && \
		(!usingPeladius || IsStageDone(PeladiusStage)))
			SetObjectiveDisplayed(1000, false)
			if(usingTyra)
				EbonyPlate_MiscQuest.setStage(10)
			else
				setStage(1000)
			endIf
	endIf
endFunction

function checkInnkeepers();lmao can you tell where i decided way too late to add a stage
	if( (!usingUrgnok   || IsStageDone(UrgnokStage + 1)) && \
		(!usingFathrys  || IsStageDone(FathrysStage + 1)) && \
		(!usingSkjol    || IsStageDone(SkjolStage + 3)) && \
		(!usingErwan    || IsStageDone(ErwanStage + 1)) && \
		(!usingAesrael  || IsStageDone(AesraelStage + 1)) && \
		(!usingPeladius || IsStageDone(PeladiusStage + 1)))
			SetObjectiveCompleted(1000)
	endIf
endFunction

function checkCompatibility()
	if(CT_SteelSoldierIntegration.Peladius)
		usingPeladius = true
		Actor Peladius = CT_SteelSoldierIntegration.Peladius
		Alias_Peladius.forceRefTo(Peladius)
		Peladius.addItem(Alias_PeladiusPendant.getReference())
		SteelSoldier_MiscQuest = CT_SteelSoldierIntegration.SteelSoldier_MiscQuest
		Alias_Faida.getActorReference().addToFaction(CT_InnkeepersWithUsefulInfo)
	endIf
	if(CT_ElvenHunterIntegration.Aesrael)
		usingAesrael = true
		Actor Aesrael = CT_ElvenHunterIntegration.Aesrael
		Alias_Aesrael.forceRefTo(Aesrael)
		ObjectReference AesraelChest = CT_ElvenHunterIntegration.AesraelChest
		Alias_AesraelChest.forceRefTo(AesraelChest)
		AesraelChest.addItem(Alias_AesraelPendant.getReference())
		ElvenHunter_MiscQuest = CT_ElvenHunterIntegration.ElvenHunter_MiscQuest
		ElvenHunter_Quest = CT_ElvenHunterIntegration.ElvenHunter_Quest
		CT_CrimsonDirksBooks.addForm(CT_ElvenHunterIntegration.ElvenHunter_CrimsonDirksV7, 1, 1)
		Alias_ValgaVinicia.getActorReference().addToFaction(CT_InnkeepersWithUsefulInfo)
	endIf
	if(CT_EbonyPlateIntegration.TyraBloodFire)
		usingTyra = true
		Actor Tyra = CT_EbonyPlateIntegration.TyraBloodFire
		Alias_TyraBloodFire.forceRefTo(Tyra)
		EbonyPlate_MiscQuest = CT_EbonyPlateIntegration.EbonyPlate_MiscQuest
		Tyra.addItem(Alias_TyraPendant.getReference())
		CT_CrimsonDirksBooks.addForm(CT_EbonyPlateIntegration.EbonyPlate_CrimsonDirksV1, 1, 1)
	endIf
	if(CT_DwarvenMailIntegration.Urgnok)
		usingUrgnok = true
		Actor Urgnok = CT_DwarvenMailIntegration.Urgnok
		Alias_Urgnok.forceRefTo(Urgnok)
		Urgnok.addItem(Alias_UrgnokPendant.getReference())
		DwarvenMail_MiscQuest = CT_DwarvenMailIntegration.DwarvenMail_MiscQuest
		CT_CrimsonDirksBooks.addForm(CT_DwarvenMailIntegration.DwarvenMail_CrimsonDirksV8, 1, 1)
		Alias_Wilhelm.getActorReference().addToFaction(CT_InnkeepersWithUsefulInfo)
	endIf
	if(CT_StuddedDragonscaleIntegration.Fathrys)
		usingFathrys = true
		Actor Fathrys = CT_StuddedDragonscaleIntegration.Fathrys
		Alias_Fathrys.forceRefTo(Fathrys)
		Fathrys.addItem(Alias_FathrysPendant.getReference())
		StuddedDragonscale_MiscQuest = CT_StuddedDragonscaleIntegration.StuddedDragonscale_MiscQuest
		CT_CrimsonDirksBooks.addForm(CT_StuddedDragonscaleIntegration.StuddedDragonscale_CrimsonDirksV4, 1, 1)
		Alias_Hadring.getActorReference().addToFaction(CT_InnkeepersWithUsefulInfo)
	endIf
	if(CT_DaedricMailIntegration.Erwan)
		usingErwan = true
		Actor Erwan = CT_DaedricMailIntegration.Erwan
		Alias_Erwan.forceRefTo(Erwan)
		Erwan.addItem(Alias_ErwanPendant.getReference())
		DaedricMail_MiscQuest = CT_DaedricMailIntegration.DaedricMail_MiscQuest
		CT_CrimsonDirksBooks.addForm(CT_StuddedDragonscaleIntegration.DaedricMail_CrimsonDirksV5, 1, 1)
		Alias_Elda.getActorReference().addToFaction(CT_InnkeepersWithUsefulInfo)
	endIf
	if(CT_StalhrimFurIntegration.Skjol)
		usingSkjol = true
		Actor Skjol = CT_StalhrimFurIntegration.Skjol
		Alias_Skjol.forceRefTo(Skjol)
		Skjol.addItem(Alias_SkjolPendant.getReference())
		StalhrimFur_MiscQuest = CT_StalhrimFurIntegration.StalhrimFur_MiscQuest as SSE_QF_ccBGSSSE057_MiscQuest_0300081B
		Alias_GeldisSadri.getActorReference().addToFaction(CT_InnkeepersWithUsefulInfo)
	endIf
	CT_SteelSoldierIntegration.stop()
	CT_ElvenHunterIntegration.stop()
	CT_EbonyPlateIntegration.stop()
	CT_StuddedDragonscaleIntegration.stop()
	CT_DaedricMailIntegration.stop()
	CT_StalhrimFurIntegration.stop()
	;failsafe
	if( !usingUrgnok && \
		!usingFathrys && \
		!usingSkjol && \
		!usingErwan && \
		!usingAntonius&& \
		!usingAesrael && \
		!usingPeladius)
			checkTyra()
	endIf
endFunction

function showLocateObjectives()
	SetObjectiveDisplayed(1000)
	SetObjectiveDisplayed(UrgnokStage, usingUrgnok)
	SetObjectiveDisplayed(FathrysStage, usingFathrys)
	SetObjectiveDisplayed(SkjolStage, usingSkjol)
	SetObjectiveDisplayed(ErwanStage, usingErwan)
	SetObjectiveDisplayed(AntoniusStage, usingAntonius)
	SetObjectiveDisplayed(AesraelStage, usingAesrael)
	SetObjectiveDisplayed(PeladiusStage, usingPeladius)
	SetObjectiveDisplayed(TyraStage, usingTyra)
endFunction

Quest Property CrimsonTrailPendantSubquest Auto
ObjectReference Property BountyHunterEnableMarker Auto
Faction Property CT_InnkeepersWithUsefulInfo Auto
LeveledItem Property CT_CrimsonDirksBooks Auto
