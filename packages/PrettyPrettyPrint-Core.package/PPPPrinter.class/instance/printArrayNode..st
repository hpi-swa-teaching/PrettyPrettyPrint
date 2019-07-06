visit-node
printArrayNode: aPPPArrayNode 

	self currentLine nextPutAll: (aPPPArrayNode constant ifTrue: [ '#( ' ] ifFalse: [ '{ ' ]).
	
	aPPPArrayNode contents
		do: [ :content | 
			| fitsInLine |
			fitsInLine := self nodeFitsInLine: content.
			fitsInLine ifFalse: [self 
				incrementIndent;
				newLineIndent].
			self visitValueNode: content.
			fitsInLine ifFalse: [self decrementIndent] ]
		separatedBy: [ self currentLine space.
			aPPPArrayNode constant ifFalse: [ self currentLine
			nextPut: $.;
			space ] ].
	
	self currentLine nextPutAll: (aPPPArrayNode constant ifTrue: [ ' )' ] ifFalse: [ ' }' ])