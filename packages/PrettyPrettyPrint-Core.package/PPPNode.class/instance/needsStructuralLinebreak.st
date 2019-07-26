accessing
needsStructuralLinebreak
	
	needsStructuralLinebreak ifNil: [ needsStructuralLinebreak := false ].
	
	^ needsStructuralLinebreak