Scriptname CTPendantTracker extends Quest Conditional

bool property UrgnokTurnedIn auto conditional
bool property FathrysTurnedIn auto conditional
bool property SkjolTurnedIn auto conditional
bool property ErwanTurnedIn auto conditional
bool property AntoniusTurnedIn auto conditional
bool property AesraelTurnedIn auto conditional
bool property PeladiusTurnedIn auto conditional
bool property TyraTurnedIn auto conditional

QF_CrimsonTrailQuest_0C014C14 property CT auto

bool property usingAntonius
	bool function get()
		return CT.usingAntonius
	endFunction
endProperty

function checkIfDone()
	if(UrgnokTurnedIn && \
		FathrysTurnedIn && \
		SkjolTurnedIn && \
		ErwanTurnedIn && \
		(!usingAntonius || AntoniusTurnedIn) && \
		AesraelTurnedIn && \
		PeladiusTurnedIn && \
		TyraTurnedIn)
	setStage(1000)
	endIf
endFunction