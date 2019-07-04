calculate structuralLinebreak
structuralLinebreakForArrayNode: anArrayNode

	anArrayNode isConstant 
		ifFalse: [ anArrayNode contents 
			do: [:childNode | 
				childNode needsStructuralLinebreak
					ifTrue:[anArrayNode needsStructuralLinebreak: true]]]
	
	