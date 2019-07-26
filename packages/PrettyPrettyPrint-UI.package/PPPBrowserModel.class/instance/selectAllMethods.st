list selection handling
selectAllMethods
	
	self selectedMethods: self methods asArray.
	self changed: #methods