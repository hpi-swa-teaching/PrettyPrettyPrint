visit-node
printMessageNodeMultiline: aPPPMessageNode 
	
	"If the receiver also doesn't fit in a single line and the message is not unary, 
	it needs its own level of indentation. This makes nested methods more readable."	
	
		aPPPMessageNode ifNotInCascade: [aPPPMessageNode isUnaryMessage
			ifTrue: [ self visitValueNode: aPPPMessageNode receiver.
			 	self printUnaryMessage: aPPPMessageNode ]
			ifFalse: [self incrementIndent.
				self visitValueNode: aPPPMessageNode receiver.
				self decrementIndent]].
	aPPPMessageNode isBinaryMessage ifTrue: [ self printBinaryMessageMultiline: aPPPMessageNode ].
	aPPPMessageNode isNamedMessage ifTrue: [ self printNamedMessageMultiline: aPPPMessageNode ]