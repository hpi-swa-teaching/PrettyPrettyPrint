list selection handling
invertSelectionForCategories

	| numberOfCategories selectedCategoriesCollection |
		
	self deselectAllClasses.
	numberOfCategories := self categories size.
	selectedCategoriesCollection := self selectedCategories asOrderedCollection.
	1 to: numberOfCategories do: [:num | selectedCategoriesCollection remove: num 
		ifAbsent: [selectedCategoriesCollection add: num]].
	self selectedCategories: selectedCategoriesCollection asArray.
	self changed: #categories.
	self changed: #classes.
	