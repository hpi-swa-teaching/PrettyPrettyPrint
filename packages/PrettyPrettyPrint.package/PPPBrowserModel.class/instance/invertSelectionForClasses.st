list selection handling
invertSelectionForClasses

	| numberOfClasses selectedClassesCollection |
	self deselectAllMethods.
	numberOfClasses := self classes size.
	selectedClassesCollection := self selectedClasses asOrderedCollection.
	1 to: numberOfClasses do: [:num | selectedClassesCollection remove: num 
		ifAbsent: [selectedClassesCollection add: num]].
	self selectedClasses: selectedClassesCollection asArray.
	self changed: #classes.
	self changed: #methods.
	