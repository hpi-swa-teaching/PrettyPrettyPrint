calculate length
lengthForArrayNode: anArrayNode
	
	| length |
	
	length := self additionalLengthForParentheses: anArrayNode.
	length := length + (self additionalLengthForArray: anArrayNode).
	
	anArrayNode contents 
		do: [:element | length := length + element length] 
		separatedBy: [length := length + (self separationBetweenArrayElements: anArrayNode)].
		
	^ length