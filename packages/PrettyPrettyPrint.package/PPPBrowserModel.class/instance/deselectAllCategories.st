list selection handling
deselectAllCategories

	self selectedCategories: #().
	self changed: #categories.
	self changed: #classes.