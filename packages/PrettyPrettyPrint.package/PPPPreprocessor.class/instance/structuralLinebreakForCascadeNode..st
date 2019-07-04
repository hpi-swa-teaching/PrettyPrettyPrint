calculate structuralLinebreak
structuralLinebreakForCascadeNode: aCascadeNode

	aCascadeNode 
		needsStructuralLinebreak: ((aCascadeNode messages 
			anySatisfy: [:message | message isUnaryMessage not]) 
				or: [aCascadeNode receiver needsStructuralLinebreak])
	