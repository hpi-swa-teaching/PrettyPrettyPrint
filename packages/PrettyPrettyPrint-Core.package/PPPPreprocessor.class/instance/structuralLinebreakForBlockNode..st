calculate structuralLinebreak
structuralLinebreakForBlockNode: aBlockNode

	^ aBlockNode bodySequence needsStructuralLinebreak
	