visit-node
visitValueNode: aNode 

	| buffer paranthesesNeeded |
	buffer := WriteStream on: ''.
	paranthesesNeeded := self shouldHaveParantheses: aNode.
	
	self printCommentsOf: aNode on: buffer.
	
	paranthesesNeeded ifTrue: [ buffer nextPut: $( ].
	buffer nextPutAll: (aNode accept: self).
	paranthesesNeeded ifTrue: [ buffer nextPut: $) ].
	
	^buffer contents