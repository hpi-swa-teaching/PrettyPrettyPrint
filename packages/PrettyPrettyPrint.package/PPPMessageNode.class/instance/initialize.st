initialize-release
initialize
	super initialize.
	
	self 
		arguments: OrderedCollection new;
		receiverDepth: 0;
		argumentDepth: 0
	