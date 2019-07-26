list selection handling
selectAllCategories
	
	self selectedCategories: self categories asArray.
	self changed: #categories.
	self changed: #classes