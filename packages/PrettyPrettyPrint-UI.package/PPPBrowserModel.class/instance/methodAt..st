list selection handling
methodAt: anIndex

	^ self selectedMethods includes: (self methods at: anIndex ifAbsent: [^ false]).