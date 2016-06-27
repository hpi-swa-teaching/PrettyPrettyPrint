as yet unclassified
printNamedMessage: aNode
	| buffer |
	buffer := WriteStream on: ''.
	
	self each: (aNode selector subStrings: ':') and: aNode arguments do: [ :messagePart :argument |
		buffer
			nextPutAll: messagePart;
			nextPutAll: ': ';
			nextPutAll: (argument accept: self) ] separatedBy: [ buffer nextPut: $  ].
	
	^buffer contents