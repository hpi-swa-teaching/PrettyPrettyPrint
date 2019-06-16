visit-node
visitBlockNode: aBlockNode
	
	| length |
	length := self additionalLengthForParentheses: aBlockNode.
	length := length + self additionalLengthForBlockBrackets.
	aBlockNode bindings 
		do: [:binding | length := length + binding size] 
		separatedBy:[ length := length + self additionalLengthForSpace].
	aBlockNode bindings notEmpty ifTrue:[ length := length + self additionalLengthForPipe].
	
	aBlockNode bodySequence accept: self.
	
	aBlockNode 
		length: (length + aBlockNode bodySequence childLength + aBlockNode bodySequence length);
		depth: (aBlockNode bodySequence depth 
			+ (self additionalBlockDepth) 
			+ (self additionalDepthForParentheses: aBlockNode))
	
	
	