calculate structuralLinebreak
structuralLinebreakForCascadeNode: aCascadeNode

	^ (aCascadeNode messages 
			anySatisfy: [:message | message isUnaryMessage not]) 
				or: [aCascadeNode receiver needsStructuralLinebreak]
	