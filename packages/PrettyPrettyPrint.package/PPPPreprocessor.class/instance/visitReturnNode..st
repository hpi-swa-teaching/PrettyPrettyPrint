visit-node
visitReturnNode: aReturnNode
	
	aReturnNode value accept: self.
	aReturnNode 
		length: self additionalLengthForCircumflex + aReturnNode value length;
		depth: aReturnNode value depth
	