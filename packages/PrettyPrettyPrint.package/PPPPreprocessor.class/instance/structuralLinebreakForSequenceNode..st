calculate structuralLinebreak
structuralLinebreakForSequenceNode: aSequenceNode

	^aSequenceNode statements size > 1 or: (aSequenceNode statements contains: [:statement | statement needsStructuralLinebreak ])