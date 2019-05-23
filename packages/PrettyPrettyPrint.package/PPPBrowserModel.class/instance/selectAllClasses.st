list selection handling
selectAllClasses

	self selectedClasses: self classes asArray.
	self changed: #classes.
	self changed: #methods.
	