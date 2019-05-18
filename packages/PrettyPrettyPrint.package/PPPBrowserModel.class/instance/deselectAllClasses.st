list selection handling
deselectAllClasses

	self deselectAllMethods.
	self selectedClasses: #().
	self changed: #classes.