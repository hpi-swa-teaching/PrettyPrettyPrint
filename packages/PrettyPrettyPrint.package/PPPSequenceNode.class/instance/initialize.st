initialize-release
initialize
	super initialize.
	
	temporaries := OrderedCollection new.
	statements := OrderedCollection new.
	trailingComments := OrderedCollection new