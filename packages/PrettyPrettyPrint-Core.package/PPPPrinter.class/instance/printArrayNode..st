visit-node
printArrayNode: aPPPArrayNode 

	self currentLine nextPutAll: (aPPPArrayNode constant ifTrue: [ '#( ' ] ifFalse: [ '{ ' ]).
	self incrementIndent.
	
	aPPPArrayNode contents
		do: [ :content | self visitValueNode: content ]
		separatedBy: [ self currentLine space.
			aPPPArrayNode constant ifFalse: [ self currentLine
			nextPut: $.;
			space ] ].
	
	self currentLine nextPutAll: (aPPPArrayNode constant ifTrue: [ ' )' ] ifFalse: [ ' }' ]).
	self decrementIndent