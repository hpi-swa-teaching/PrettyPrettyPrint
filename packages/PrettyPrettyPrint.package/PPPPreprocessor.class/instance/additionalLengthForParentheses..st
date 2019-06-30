calculate length
additionalLengthForParentheses: aNode
	
	aNode hasParentheses ifTrue: [^2] ifFalse: [^0]