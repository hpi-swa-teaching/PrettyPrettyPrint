initialize-release
initialize
	super initialize.
	
	comments := OrderedCollection new.
	length := 0.
	depth := 0.
	needsStructuralLinebreak := false
	