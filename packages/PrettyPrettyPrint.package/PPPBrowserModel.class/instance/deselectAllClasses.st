list selection handling
deselectAllClasses

	self selectedClasses: #().
	self changed: #classes.
	self changed: #methods.