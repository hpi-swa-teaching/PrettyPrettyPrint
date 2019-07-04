visit-node
visitMessageNode: aMessageNode

	aMessageNode receiver ifNotNil: [aMessageNode receiver accept: self].
	aMessageNode arguments do: [:argument | argument accept: self].
	
	self setParanthesesForMessageNode: aMessageNode.
		
	aMessageNode
		length: (self lengthForMessageNode: aMessageNode);
		depth: (self depthForMessageNode: aMessageNode)
			
		
	
