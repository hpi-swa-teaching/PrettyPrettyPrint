list selection handling
invertSelectionForMethods

	| numberOfMethods selectedMethodsCollection |
	numberOfMethods := self methods size.
	selectedMethodsCollection := self selectedMethods asOrderedCollection.
	1 to: numberOfMethods do: [:num | selectedMethodsCollection remove: num 
		ifAbsent: [selectedMethodsCollection add: num]].
	self selectedMethods: selectedMethodsCollection asArray.
	