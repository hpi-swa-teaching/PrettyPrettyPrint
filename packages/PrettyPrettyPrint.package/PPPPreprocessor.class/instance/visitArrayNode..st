visit-node
visitArrayNode: anArrayNode
	
	anArrayNode contents do: [:element | element accept: self].
			
	anArrayNode 
		depth: (self lengthForArrayNode: anArrayNode);
		length: (self depthForArrayNode: anArrayNode)
		
	
