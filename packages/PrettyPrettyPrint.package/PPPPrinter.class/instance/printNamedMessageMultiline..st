helpers-printing
printNamedMessageMultiline: aPPPMessageNode 

	self incrementIndent.
	aPPPMessageNode ifNotInCascade: [ self newLineIndent] .
	
	self
		each: (aPPPMessageNode selector subStrings: ':')
		and: aPPPMessageNode arguments
		do: [ :messagePart :argument | self currentLine
			nextPutAll: messagePart;
			nextPutAll: ': '.
			self visitValueNode: argument ]
		separatedBy: [ self newLineIndent ].
	self decrementIndent