visit-node
visitValueNode: aPPPValueNode 
	
	self printCommentsOf: aPPPValueNode.
	
	aPPPValueNode hasParentheses ifTrue: [ self currentLine nextPut: $( ].
	aPPPValueNode accept: self.
	aPPPValueNode hasParentheses ifTrue: [ self currentLine nextPut: $) ]