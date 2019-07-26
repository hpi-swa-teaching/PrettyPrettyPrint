visit-node
shouldHaveParantheses: aNode
	
	(self profile) minimalParanthesis
		ifTrue: [ ^ aNode needsParantheses and: [aNode hasParentheses] ]
		ifFalse: [ ^aNode hasParentheses ]