visit-node
visitLiteralNode: aPPPLiteralNode 
	
	(self nodeFitsInLine: aPPPLiteralNode) ifFalse: [self newLineIndent].
	self currentLine nextPutAll: aPPPLiteralNode value