list selection handling
deselectAllCategories

	self deselectAllClasses.	
	self selectedCategories: #().
	self changed: #categories.