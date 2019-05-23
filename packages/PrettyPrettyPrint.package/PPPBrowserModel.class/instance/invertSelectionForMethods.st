list selection handling
invertSelectionForMethods

	| selectedMethodsCollection |
	selectedMethodsCollection := self selectedMethods asOrderedCollection.
	self methods do: [:meth | selectedMethodsCollection remove: meth 
		ifAbsent: [selectedMethodsCollection add: meth]].
	self selectedMethods: selectedMethodsCollection asArray.
	self changed: #methods.
	