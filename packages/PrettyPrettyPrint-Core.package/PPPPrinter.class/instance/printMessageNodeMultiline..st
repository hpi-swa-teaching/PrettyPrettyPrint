visit-node
printMessageNodeMultiline: aPPPMessageNode 
	
	"If the receiver also doesn't fit in a single line it needs its own level of indentation, 
	if the message is not unary. This makes nested methods more readable."	
	aPPPMessageNode isUnaryMessage 
		ifTrue: [ self visitValueNode: aPPPMessageNode receiver.
		 	self printUnaryMessage: aPPPMessageNode ]
		ifFalse: [self incrementIndent.
			self visitValueNode: aPPPMessageNode receiver.
			self decrementIndent].
	aPPPMessageNode isBinaryMessage ifTrue: [ self printBinaryMessageMultiline: aPPPMessageNode ].
	aPPPMessageNode isNamedMessage ifTrue: [ self printNamedMessageMultiline: aPPPMessageNode ]