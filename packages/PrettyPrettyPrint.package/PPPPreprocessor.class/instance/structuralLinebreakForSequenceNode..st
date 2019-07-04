calculate structuralLinebreak
structuralLinebreakForSequenceNode: aSequenceNode

	aSequenceNode statements size > 1 ifTrue: [aSequenceNode needsStructuralLinebreak: true].
	aSequenceNode statements 
		do: [:statement | statement needsStructuralLinebreak 
			ifTrue: [aSequenceNode needsStructuralLinebreak: true]]
	