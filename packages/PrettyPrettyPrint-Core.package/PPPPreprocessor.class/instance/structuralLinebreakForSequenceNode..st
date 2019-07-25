calculate structuralLinebreak
structuralLinebreakForSequenceNode: aSequenceNode

	aSequenceNode statements size > 1 ifTrue: [^ true].
	^ aSequenceNode statements contains: [:statement | statement needsStructuralLinebreak ]