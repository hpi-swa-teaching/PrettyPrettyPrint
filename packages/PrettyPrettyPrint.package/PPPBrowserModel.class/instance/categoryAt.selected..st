as yet unclassified
categoryAt: anIndex selected: aBoolean

	aBoolean 
		ifTrue: [self selectedCategories: (self selectedCategories copyWith: anIndex)] 
		ifFalse: [self selectedCategories: (self selectedCategories copyWithout: anIndex)].
		
	self changed: #classes.