list selection handling
selectAllMethods

	| numberOfMethods selectedMethodsCollection |
	numberOfMethods := self methods size.
	selectedMethodsCollection := OrderedCollection new.
	self deselectAllMethods.
	1 to: numberOfMethods do: [:num | selectedMethodsCollection add: num].
	self selectedMethods: selectedMethodsCollection asArray.
	self changed: #methods.