visit-node
visitArrayNode: anArrayNode

	anArrayNode contents do: [:element | element accept: self].
			
	anArrayNode 
		length: (self lengthForArrayNode: anArrayNode);
		needsStructuralLinebreak: (self structuralLinebreakForArrayNode: anArrayNode)
		
	
