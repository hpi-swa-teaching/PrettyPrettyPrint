visit-node
visitLiteralNode: aPPPLiteralNode
	
	aPPPLiteralNode literalType == #string
		ifTrue: [aPPPLiteralNode length: (self getLengthOStringLiteralNode: aPPPLiteralNode)]
		ifFalse: [aPPPLiteralNode length: aPPPLiteralNode value size]
	