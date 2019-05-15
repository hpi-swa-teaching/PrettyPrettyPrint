list selection handling
selectAllClasses

	| numberOfClasses selectedClassesCollection |
	numberOfClasses := self classes size.
	selectedClassesCollection := OrderedCollection new.
	self deselectAllClasses.
	1 to: numberOfClasses do: [:num | selectedClassesCollection add: num].
	self selectedClasses: selectedClassesCollection asArray.
	self changed: #methods.
	