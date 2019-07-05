initialize-release
initialize
	super initialize.
	
	self 
		messages: OrderedCollection new;
		receiverDepth: 0;
		messageDepth: 0