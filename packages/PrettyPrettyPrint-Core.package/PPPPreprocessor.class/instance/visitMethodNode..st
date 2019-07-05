visit-node
visitMethodNode: aMethodNode
	
	aMethodNode bodySequence accept: self.
	
	aMethodNode length: (self lengthForMethodNode: aMethodNode)
	
	
	