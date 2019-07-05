visit-node
printArrayNodeMultiline: aPPPArrayNode 

	self currentLine nextPutAll: (aPPPArrayNode constant ifTrue: [ '#( ' ] ifFalse: [ '{ ' ]).
	self incrementIndent.
	
	aPPPArrayNode contents
		do: [ :content | self visitValueNode: content ]
		separatedBy: [ self currentLine space.
			aPPPArrayNode constant ifFalse: [ self currentLine
			nextPut: $.;
			space ].
			self newLineIndent ].
	
	self currentLine nextPutAll: (aPPPArrayNode constant ifTrue: [ ' )' ] ifFalse: [ ' }' ]).
	self decrementIndent