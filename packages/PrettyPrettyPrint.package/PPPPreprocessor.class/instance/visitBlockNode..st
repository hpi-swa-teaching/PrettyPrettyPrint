visit-node
visitBlockNode: aBlockNode
	
	| length |
	length := self additionalLengthForParentheses: aBlockNode.
	length := length + 2.
	aBlockNode bindings do: [:binding | length := length + binding size] separatedBy:[ length := length + 1].
	aBlockNode bindings  notEmpty ifTrue:[ length := length + 3].
	
	aBlockNode bodySequence accept: self.
	
	aBlockNode 
		length: (length + aBlockNode bodySequence childLength);
		depth: (aBlockNode bodySequence maxChildDepth + 1 + (self additionalDepthForParentheses: aBlockNode))
	
	
	