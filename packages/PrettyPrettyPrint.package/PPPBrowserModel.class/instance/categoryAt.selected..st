list selection handling
categoryAt: anIndex selected: aBoolean

	aBoolean 
		ifTrue: [self selectedCategories: (self selectedCategories copyWith: anIndex)] 
		ifFalse: [
			self deselectClassesOfCategory: (self categories at: anIndex).
			self selectedCategories: (self selectedCategories copyWithout: anIndex)].
		
	self changed: #classes.