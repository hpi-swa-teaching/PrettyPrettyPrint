calculate length
lengthForCascadeNode: aCascadeNode

	| length |
	
	length := self additionalLengthForParentheses: aCascadeNode.
	aCascadeNode messages 
		do: [:message | length := length + message length] 
		separatedBy: [length := length + self additionalLengthForSemicolon + self additionalLengthForSpace].
	length := aCascadeNode receiver length + self additionalLengthForSpace + length.
	
	^ length