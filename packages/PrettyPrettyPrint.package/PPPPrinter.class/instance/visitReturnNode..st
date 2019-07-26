visit-node
visitReturnNode: aPPPReturnNode
	
	(self currentBlockLevel
			= 0 and: [ self profile newlineBeforeReturn ])
		ifTrue: [ self newLineIndent ].
	self currentLine nextPutAll: '^'.
	self profile spaceBeforeReturn ifTrue: [ self currentLine space ].
	self visitValueNode: aPPPReturnNode value