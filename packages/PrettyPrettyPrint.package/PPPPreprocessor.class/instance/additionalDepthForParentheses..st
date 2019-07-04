special characters
additionalDepthForParentheses: aNode
	
	self profile minimalParanthesis
		ifTrue: [^aNode needsParantheses ifTrue: [1] ifFalse: [0]] 
		ifFalse: [^aNode hasParentheses ifTrue: [1] ifFalse: [0]]