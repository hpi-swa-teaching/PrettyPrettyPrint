initialize-release
initialize
	super initialize.
	
	self contents: OrderedCollection new.
	self constant: false