printing
printArrayNode: aPPPArrayNode
	
	self currentLine
		nextPutAll: (aPPPArrayNode constant
			ifTrue: [ '#( ' ]
			ifFalse: [ '{ ' ]).
	
	aPPPArrayNode contents
		do: [ :element | self printArrayPartOf: element ]
		separatedBy: [
			self currentLine space.
			aPPPArrayNode constant
				ifFalse: [
					self currentLine
						nextPut: $.;
						space ] ].
	self currentLine
		nextPutAll: (aPPPArrayNode constant
			ifTrue: [ ' )' ]
			ifFalse: [ ' }' ])