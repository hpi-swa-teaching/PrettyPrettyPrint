list selection handling
deselectClassesOfCategory: aCategory

	| newSelectedClasses classesOfCategory | 
	
	newSelectedClasses := self selectedClasses asOrderedCollection.
	classesOfCategory := self categoryDictionary at: aCategory.
	self selectedClasses do: [:class |
		(classesOfCategory includes: class) 
			ifTrue: [newSelectedClasses remove: class.
				self deselectMethodsOfClass: class]].
	self selectedClasses: newSelectedClasses asArray.
	self changed: #classes.