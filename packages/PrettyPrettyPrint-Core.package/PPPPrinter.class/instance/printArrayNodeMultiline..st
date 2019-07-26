visit-node
printArrayNodeMultiline: aPPPArrayNode 

	self currentLine nextPutAll: (aPPPArrayNode constant ifTrue: [ '#( ' ] ifFalse: [ '{ ' ]).
	self incrementIndent.
	
	aPPPArrayNode contents
		do: [ :content | self visitValueNode: content ]
		separatedBy: [ self printArrayMultilineSeparationOf: aPPPArrayNode ].
	
	self currentLine nextPutAll: (aPPPArrayNode constant ifTrue: [ ' )' ] ifFalse: [ ' }' ]).
	self decrementIndent