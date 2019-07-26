visit-node
visitLiteralNode: aPPPLiteralNode
	
	aPPPLiteralNode literalType == #string
		ifTrue: [
			aPPPLiteralNode
				length: (self
					lengthForStringLiteralNode: aPPPLiteralNode) ]
		ifFalse: [ aPPPLiteralNode length: aPPPLiteralNode value size ]