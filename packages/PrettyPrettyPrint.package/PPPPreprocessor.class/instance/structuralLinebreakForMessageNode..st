calculate structuralLinebreak
structuralLinebreakForMessageNode: aMessageNode

	aMessageNode 
		needsStructuralLinebreak: ((aMessageNode arguments 
			anySatisfy: [:arg | arg needsStructuralLinebreak]) 
				or: [aMessageNode receiver notNil and: [aMessageNode receiver needsStructuralLinebreak]])
	