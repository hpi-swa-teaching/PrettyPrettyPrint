visit-node
visitBlockNode: aBlockNode
	
	aBlockNode bodySequence accept: self.
	
	aBlockNode 
		length: (self lengthForBlockNode: aBlockNode);
		depth: (self depthForBlockNode: aBlockNode);
		needsStructuralLinebreak: (self structuralLinebreakForBlockNode: aBlockNode)
	
	
	