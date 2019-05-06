as yet unclassified
categoryAt: aCategory selected: aBoolean

	aBoolean 
		ifTrue: [self selectedCategories: (self selectedCategories copyWith: aCategory)] 
		ifFalse: [self selectedCategories: (self selectedCategories copyWithout: aCategory)].
		
	self changed: #classes.