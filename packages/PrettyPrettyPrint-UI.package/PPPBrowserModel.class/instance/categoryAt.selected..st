list selection handling
categoryAt: anIndex selected: aBoolean

	aBoolean 
		ifTrue: [self selectedCategories: (self selectedCategories copyWith: (self categories at: anIndex ifAbsent: [^ self]))] 
		ifFalse: [
			self deselectClassesOfCategory: (self categories at: anIndex).
			self selectedCategories: (self selectedCategories copyWithout: (self categories at: anIndex ifAbsent: [^ self]))].
		
	self changed: #classes.