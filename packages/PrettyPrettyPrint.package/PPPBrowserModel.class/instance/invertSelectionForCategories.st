list selection handling
invertSelectionForCategories
	
	| selectedCategoriesCollection |
	
	self deselectAllClasses.
	selectedCategoriesCollection := self selectedCategories asOrderedCollection.
	self categories
		do: [ :cat |
			selectedCategoriesCollection
				remove: cat
				ifAbsent: [ selectedCategoriesCollection add: cat ] ].
	self selectedCategories: selectedCategoriesCollection asArray.
	self changed: #categories.
	self changed: #classes