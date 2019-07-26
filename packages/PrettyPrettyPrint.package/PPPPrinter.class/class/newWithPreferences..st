preferences
newWithPreferences: aBlock
	
	| printer |
	
	printer := self new.
	aBlock value: printer profile.
	
	^ printer