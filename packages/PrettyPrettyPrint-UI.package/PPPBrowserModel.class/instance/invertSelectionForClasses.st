list selection handling
invertSelectionForClasses
	
	| selectedClassesCollection |
	
	self deselectAllMethods.
	selectedClassesCollection := self selectedClasses asOrderedCollection.
	self classes
		do: [ :class |
			selectedClassesCollection
				remove: class
				ifAbsent: [ selectedClassesCollection add: class ] ].
	self selectedClasses: selectedClassesCollection asArray.
	self changed: #classes.
	self changed: #methods