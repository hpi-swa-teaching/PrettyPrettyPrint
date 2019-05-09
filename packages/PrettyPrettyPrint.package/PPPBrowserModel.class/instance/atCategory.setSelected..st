list selection handling
atCategory: aString setSelected: aBoolean

	^ (self categoryDictionary at: aString) atWrap: 1 put: aBoolean