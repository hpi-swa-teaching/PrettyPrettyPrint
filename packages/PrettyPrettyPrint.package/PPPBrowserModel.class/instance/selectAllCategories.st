list selection handling
selectAllCategories

	| numberOfCategories selectedCategoriesCollection |
	numberOfCategories := self categories size.
	selectedCategoriesCollection := OrderedCollection new.
	self deselectAllCategories.
	1 to: numberOfCategories do: [:num | selectedCategoriesCollection add: num].
	self selectedCategories: selectedCategoriesCollection asArray.
	self changed: #categories.
	self changed: #classes.
