visit-node
visitSequenceNode: aPPPSequenceNode
	
	self
		printTemporariesOf: aPPPSequenceNode;
		printStatementsOf: aPPPSequenceNode.
	aPPPSequenceNode trailingComments
		do: [ :comment |
			self newLineIndent.
			self currentLine nextPutAll: comment content ]