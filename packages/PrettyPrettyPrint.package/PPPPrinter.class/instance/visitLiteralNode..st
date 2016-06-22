as yet unclassified
visitLiteralNode: aNode
	| buffer |
	
	buffer := WriteStream on: ''.
	
	(aNode literalType = #number) ifTrue: [ buffer nextPutAll: aNode value. ].
	(aNode literalType = #string) ifTrue: [ buffer
		nextPut: $';
		nextPutAll: aNode value;
		nextPut: $' ].
	
	^ buffer contents