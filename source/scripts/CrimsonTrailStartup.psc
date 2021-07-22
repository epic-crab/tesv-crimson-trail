Scriptname CrimsonTrailStartup extends Quest  

bool property usingUrgnok = false auto hidden
bool property usingFathrys = false auto hidden
bool property usingSkjol = false auto hidden
bool property usingErwan = false auto hidden
bool property usingAntonius = false auto hidden
bool property usingAesrael = false auto hidden
bool property usingPeladius = false auto hidden
bool property usingTyra = false auto hidden

CrimsonTrailIntegration Property CT_SteelSoldierIntegration Auto
CrimsonTrailIntegration Property CT_ElvenHunterIntegration Auto
CrimsonTrailIntegration Property CT_EbonyPlateIntegration Auto
CrimsonTrailIntegration Property CT_DwarvenMailIntegration Auto
CrimsonTrailIntegration Property CT_StuddedDragonscaleIntegration Auto
CrimsonTrailIntegration Property CT_DaedricMailIntegration Auto
CrimsonTrailIntegration Property CT_StalhrimFurIntegration Auto
CrimsonTrailIntegration Property CT_ArcaneAccessoriesIntegration Auto

ObjectReference Property StartupEnableMarker Auto
ObjectReference Property BountyHunterEnableMarker Auto
Book Property CT_CrimsonDirksBountyLetter Auto
Message Property CT_DroppedNote Auto
LeveledItem Property CT_Dossiers Auto
Book Property SteelSoldier_Dossier Auto
Book Property ElvenHunter_Dossier Auto
Book Property EbonyPlate_Dossier Auto
Book Property DwarvenMail_Dossier Auto
Book Property StuddedDragonscale_Dossier Auto
Book Property DaedricMail_Dossier Auto
Book Property StalhrimFur_Dossier Auto
Book Property ArcaneAccessories_Dossier Auto

function checkCompatibility()
	if(CT_SteelSoldierIntegration.Peladius)
		usingPeladius = true
		CT_Dossiers.addForm(SteelSoldier_Dossier, 1, 1)
	endIf
	if(CT_ElvenHunterIntegration.Aesrael)
		usingAesrael = true
		CT_Dossiers.addForm(ElvenHunter_Dossier, 1, 1)
	endIf
	if(CT_EbonyPlateIntegration.TyraBloodFire)
		usingTyra = true
		CT_Dossiers.addForm(EbonyPlate_Dossier, 1, 1)
	endIf
	if(CT_DwarvenMailIntegration.Urgnok)
		usingUrgnok = true
		CT_Dossiers.addForm(DwarvenMail_Dossier, 1, 1)
	endIf
	if(CT_StuddedDragonscaleIntegration.Fathrys)
		usingFathrys = true
		CT_Dossiers.addForm(StuddedDragonscale_Dossier, 1, 1)
	endIf
	if(CT_DaedricMailIntegration.Erwan)
		usingErwan = true
		CT_Dossiers.addForm(DaedricMail_Dossier, 1, 1)
	endIf
	if(CT_StalhrimFurIntegration.Skjol)
		usingSkjol = true
		CT_Dossiers.addForm(StalhrimFur_Dossier, 1, 1)
	endIf
	if(usingUrgnok || usingFathrys || usingSkjol || usingErwan || usingAntonius|| usingAesrael || usingPeladius || usingTyra)
		StartupEnableMarker.enable()
		BountyHunterEnableMarker.enable()
	endIf
endFunction

function dropNote()
	CT_DroppedNote.show()
	Game.getPlayer().placeAtMe(CT_CrimsonDirksBountyLetter)
endFunction