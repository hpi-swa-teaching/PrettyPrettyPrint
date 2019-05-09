list selection handling
methodAt: anIndex selected: aBoolean

	aBoolean 
		ifTrue: [self selectedMethods: (self selectedMethods copyWith: anIndex)] 
		ifFalse: [self selectedMethods: (self selectedMethods copyWithout: anIndex)].