calculate structuralLinebreak
structuralLinebreakForArrayNode: anArrayNode
	
	anArrayNode isConstant
		ifTrue: [ ^ false ]
		ifFalse: [
			^ anArrayNode contents
				contains: [ :childNode |
					childNode needsStructuralLinebreak ] ]