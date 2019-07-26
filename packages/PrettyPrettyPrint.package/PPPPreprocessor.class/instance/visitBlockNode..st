visit-node
visitBlockNode: aBlockNode
	
	aBlockNode bodySequence accept: self.
	aBlockNode
		length: (self lengthForBlockNode: aBlockNode);
		needsStructuralLinebreak: (self
			structuralLinebreakForBlockNode: aBlockNode)