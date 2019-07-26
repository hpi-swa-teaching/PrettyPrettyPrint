printing
printCascadeNodeMultiline: aPPPCascadeNode
	
	self visitValueNode: aPPPCascadeNode receiver.
	self incrementIndent.
	
	aPPPCascadeNode messages
		do: [ :message |
			self newLineIndent.
			self visitValueNode: message ]
		separatedBy: [ self currentLine nextPut: $; ].
	self decrementIndent