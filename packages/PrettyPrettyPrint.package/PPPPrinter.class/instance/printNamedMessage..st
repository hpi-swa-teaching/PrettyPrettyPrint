as yet unclassified
printNamedMessage: aNode
	| buffer multiLine arguments argumentsLength |
	buffer := WriteStream on: ''.
	
	arguments := aNode arguments collect: [ :argument | argument accept: self ].
	argumentsLength := arguments inject: 0 into: [ :sum :argument | sum + argument size ].
	
	multiLine := argumentsLength + aNode selector size > self profile maxLineLength and: [aNode arguments size > 1].
	
	multiLine ifTrue: [
		self incrementIndent.
		aNode receiver ifNotNil: [ self newLineIndentOn: buffer ]].
	
	self
		each: (aNode selector subStrings: ':')
		and: aNode arguments
		do: [ :messagePart :argument |
			buffer
				nextPutAll: messagePart;
				nextPutAll: ': ';
				nextPutAll: (argument accept: self) ]
		separatedBy: [
			multiLine
				ifFalse: [ buffer nextPut: $ ]
				ifTrue: [ self newLineIndentOn: buffer ]].
	
	multiLine ifTrue: [ self decrementIndent ].
	
	^buffer contents