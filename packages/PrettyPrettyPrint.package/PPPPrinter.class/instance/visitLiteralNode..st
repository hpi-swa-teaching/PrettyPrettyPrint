visit-node
visitLiteralNode: aNode 
	| buffer |
	buffer := WriteStream on: ''.
	
	(#(number symbol character identifier) includes: aNode literalType)
		ifTrue: [ buffer nextPutAll: aNode value ].
	
	aNode literalType = #string
		ifTrue: [
			buffer store: aNode value ].
	
	^buffer contents