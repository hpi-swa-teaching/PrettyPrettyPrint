initialize-release
initialize
	super initialize.
	
	self temporaries: OrderedCollection new;
		statements: OrderedCollection new;
		trailingComments: OrderedCollection new