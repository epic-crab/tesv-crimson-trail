;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 4
Scriptname QF_CrimsonTrailPendantSubque_0C00596C Extends Quest Hidden

;BEGIN ALIAS PROPERTY CommanderMaro
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CommanderMaro Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY UrgnokPendant
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_UrgnokPendant Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY TyraPendant
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_TyraPendant Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ErwanPendant
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ErwanPendant Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY PeladiusPendant
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PeladiusPendant Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY AesraelPendant
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AesraelPendant Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LegateRikke
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LegateRikke Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY AntoniusPendant
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AntoniusPendant Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SkjolPendant
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SkjolPendant Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY FathrysPendant
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_FathrysPendant Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
;maro killed
if(getStageDone(6))
failAllObjectives()
stop()
endIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
setObjectiveDisplayed(1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;rikke killed
if(getStageDone(5))
failAllObjectives()
stop()
endIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
setObjectiveCompleted(1)
stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
