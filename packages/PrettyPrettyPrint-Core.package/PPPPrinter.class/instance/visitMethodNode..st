visit-node
visitMethodNode: aPPPMethodNode
	
	aPPPMethodNode arguments
		ifEmpty: [ self currentLine nextPutAll: aPPPMethodNode selector ]
		ifNotEmpty: [ aPPPMethodNode arguments
			do: [ :arg | (self argumentFitsInLine: arg) ifFalse: [ self newLineIndent ].
				self currentLine nextPutAll: arg first , ' ' , arg second ]
			separatedBy: [ self currentLine space ] ].
	
	(self newLineAfterSelectorNeededFor: aPPPMethodNode) ifTrue: [ self newLineIndent ].
	self newLineIndent.
	self incrementIndent.
	
	aPPPMethodNode bodySequence accept: self