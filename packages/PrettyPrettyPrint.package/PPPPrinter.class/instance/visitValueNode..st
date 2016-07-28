visit-node
visitValueNode: aNode
	| buffer |
	buffer := WriteStream on: ''.
	
	self printCommentsOf: aNode on: buffer.
	
	aNode hasParentheses ifTrue: [ buffer nextPut: $( ].
	buffer nextPutAll: (aNode accept: self).
	aNode hasParentheses ifTrue: [ buffer nextPut: $) ].
	
	^buffer contents