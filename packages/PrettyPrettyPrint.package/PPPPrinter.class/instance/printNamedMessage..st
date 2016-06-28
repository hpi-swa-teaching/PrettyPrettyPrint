as yet unclassified
printNamedMessage: aNode
	| buffer multiLine arguments argumentsLength |
	buffer := WriteStream on: ''.
	
	arguments := aNode arguments collect: [ :argument | self visitNode: argument ].
	argumentsLength := arguments inject: 0 into: [ :sum :argument | sum + argument size ].
	
	multiLine := argumentsLength + aNode selector size > self profile maxLineLength and: [aNode arguments size > 1].
	
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
				nextPutAll: (self visitNode: argument) ]
		separatedBy: [
			multiLine
				ifFalse: [ buffer nextPut: $ ]
				ifTrue: [ self newLineIndentOn: buffer ]].
	
	multiLine ifTrue: [ self decrementIndent ].
	
	^buffer contents