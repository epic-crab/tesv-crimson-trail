;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname SSE_QF_ccBGSSSE051_MiscQuest_0300081A Extends Quest Hidden

;BEGIN ALIAS PROPERTY Jarl
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Jarl Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Elda
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Elda Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Nils
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Nils Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Steward
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Steward Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Note
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Note Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
ccBGSSSE051_MiscQuestAliasFillers.Start()
ObjectReference myBountyNote = MyNote.GetRef()
actor PlayerREF = game.GetPlayer()
myBountyNote.moveto(PlayerREF)
PlayerREF.Additem(myBountyNote)
CompleteAllObjectives()
CrimsonTrailQuest.setStage(41)
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
referencealias property MyNote auto
Quest property ccBGSSSE051_MiscQuestAliasFillers auto

Quest Property CrimsonTrailQuest  Auto  
