helpers-printing
printNamedMessage: aPPPMessageNode 
	
	aPPPMessageNode ifNotInCascade: [ self currentLine space ].	
	self
		each: (aPPPMessageNode selector subStrings: ':')
		and: aPPPMessageNode arguments
		do: [ :messagePart :argument | self currentLine
			nextPutAll: messagePart;
			nextPutAll: ': '.
			self visitValueNode: argument ]
		separatedBy: [ self currentLine space ]