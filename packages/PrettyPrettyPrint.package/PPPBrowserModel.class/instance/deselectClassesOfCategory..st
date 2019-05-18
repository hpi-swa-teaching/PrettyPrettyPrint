list selection handling
deselectClassesOfCategory: aCategory

	| newSelectedClasses classesOfCategory | 
	
	newSelectedClasses := self selectedClasses asOrderedCollection.
	classesOfCategory := self categoryDictionary at: aCategory.
	newSelectedClasses do: [:index |
		| aClass |
		aClass := self classes at: index.
		(classesOfCategory includes: aClass)
			ifTrue: [newSelectedClasses remove: index.
				self deselectMethodsOfClass: aClass]].
	self selectedClasses: newSelectedClasses asArray.
	self changed: #classes.