helpers-printing
printNamedMessageMultiline: aPPPMessageNode 
	| buffer |
	buffer := WriteStream on: ''.
	
	aPPPMessageNode ifNotInCascade: [ 
		self incrementIndent;
			newLineIndentOn: buffer].
	
	self
		each: (aPPPMessageNode selector subStrings: ':')
		and: aPPPMessageNode arguments
		do: [ :messagePart :argument | buffer
			nextPutAll: messagePart;
			nextPutAll: ': ';
			nextPutAll: (self visitValueNode: argument) ]
		separatedBy: [ self newLineIndentOn: buffer ].
	self decrementIndent.
		
	^buffer contents