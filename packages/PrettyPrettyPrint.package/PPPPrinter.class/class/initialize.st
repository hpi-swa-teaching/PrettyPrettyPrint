installation
initialize

	super initialize.
	self isChosenAsStandardPrettyPrinter 
		ifTrue: [self setAsStandardPrettyPrinter]