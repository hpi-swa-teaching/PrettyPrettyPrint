special characters
additionalLengthForParentheses: aNode
	
	self profile minimalParanthesis
		ifTrue: [^aNode needsParantheses ifTrue: [2] ifFalse: [0]] 
		ifFalse: [^aNode hasParentheses ifTrue: [2] ifFalse: [0]]