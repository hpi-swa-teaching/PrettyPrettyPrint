calculate depth
additionalDepthForParentheses: aNode
	
	aNode hasParentheses ifTrue: [^1] ifFalse: [^0]