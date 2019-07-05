visit-node
visitVariableNode: aPPPVariableNode 
	
	(self nodeFitsInLine: aPPPVariableNode) ifFalse: [self newLineIndent].
	self currentLine nextPutAll: aPPPVariableNode name