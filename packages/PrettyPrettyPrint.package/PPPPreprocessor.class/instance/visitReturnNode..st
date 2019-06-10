visit-node
visitReturnNode: aReturnNode
	
	aReturnNode value accept: self.
	aReturnNode 
		length: 1 + aReturnNode value length;
		depth: aReturnNode value depth
	