visit-node
visitArrayNode: anArrayNode

	anArrayNode contents do: [:element | element accept: self].
			
	anArrayNode 
		depth: (self depthForArrayNode: anArrayNode);
		length: (self lengthForArrayNode: anArrayNode);
		needsStructuralLinebreak: (self structuralLinebreakForArrayNode: anArrayNode)
		
	
