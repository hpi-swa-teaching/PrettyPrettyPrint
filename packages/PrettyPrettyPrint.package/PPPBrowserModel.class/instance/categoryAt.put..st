as yet unclassified
categoryAt: anInteger put: aBoolean

	selectedCategories := selectedCategories
		perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
		with: (self categoryDictionary at: anInteger ifAbsent: [ ^ self ]).
	self changed: #categorySelected; updateClasses.