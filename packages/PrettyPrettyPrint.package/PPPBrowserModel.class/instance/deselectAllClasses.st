list selection handling
deselectAllClasses
	
	self deselectAllMethods.
	self selectedClasses: #(  ).
	self changed: #methods.
	self changed: #classes