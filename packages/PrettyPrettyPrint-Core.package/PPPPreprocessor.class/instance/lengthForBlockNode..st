calculate length
lengthForBlockNode: aBlockNode
	
	| length |
	
	length := self additionalLengthForParentheses: aBlockNode.
	length := length + self additionalLengthForBlockBrackets.
	aBlockNode bindings 
		do: [:binding | length := length + binding size] 
		separatedBy:[ length := length + self additionalLengthForSpace].
	aBlockNode bindings notEmpty ifTrue: [ length := length + self additionalLengthForPipe].
	length := length + aBlockNode bodySequence childLength + aBlockNode bodySequence length.
	
	^ length
	
	
	