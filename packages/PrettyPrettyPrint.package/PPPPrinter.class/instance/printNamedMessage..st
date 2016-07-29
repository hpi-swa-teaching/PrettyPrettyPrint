helpers-printing
printNamedMessage: aNode
	| buffer multiLine |
	buffer := WriteStream on: ''.
	
	multiLine := (self messageExceedsLineLimit: aNode) and: [aNode arguments size > 1].
	
	aNode ifNotInCascade: [
		multiLine
			ifTrue: [ self incrementIndent; newLineIndentOn: buffer ]
			ifFalse: [ buffer space ]].
	
	self
		each: (aNode selector subStrings: ':')
		and: aNode arguments
		do: [ :messagePart :argument |
			buffer
				nextPutAll: messagePart;
				nextPutAll: ': ';
				nextPutAll: (self visitValueNode: argument) ]
		separatedBy: [
			multiLine
				ifFalse: [ buffer space ]
				ifTrue: [ self newLineIndentOn: buffer ]].
	
	multiLine ifTrue: [ self decrementIndent ].
	
	^buffer contents