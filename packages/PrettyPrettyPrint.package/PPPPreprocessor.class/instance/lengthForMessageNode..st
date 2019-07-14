calculate length
lengthForMessageNode: aMessageNode
	
	| length |
	
	length := self additionalLengthForParentheses: aMessageNode.
	length := length + aMessageNode selector size.
	
	aMessageNode receiver ifNotNil: [
		length := length + self additionalLengthForSpace + aMessageNode receiver length].

	aMessageNode arguments 
		do: [:argument | length := length + self additionalLengthForSpace + (self maybeOnlyReceiverLength: argument)] 
		separatedBy: [length := length + self additionalLengthForSpace].
		
	^ length