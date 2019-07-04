calculate structuralLinebreak
structuralLinebreakForSequenceNode: aSequenceNode

	aSequenceNode statements size > 1 ifTrue: [^ true].
	aSequenceNode statements 
		do: [:statement | statement needsStructuralLinebreak 
			ifTrue: [^ true]].
	^ false