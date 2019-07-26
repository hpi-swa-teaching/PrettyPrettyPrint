visit-node
visitMethodNode: aPPPMethodNode
	
	aPPPMethodNode arguments
		ifEmpty: [ self currentLine nextPutAll: aPPPMethodNode selector ]
		ifNotEmpty: [
			aPPPMethodNode arguments
				do: [ :arg |
					(self argumentFitsInLine: arg)
						ifFalse: [ self newLineIndent ].
					self currentLine nextPutAll: arg first , ' '
						, arg second ]
				separatedBy: [ self currentLine space ] ].
	
	self incrementIndent.
	(self newLineAfterSelectorNeededFor: aPPPMethodNode)
		ifTrue: [ self newLineIndent ].
	self newLineIndent.
	aPPPMethodNode bodySequence accept: self