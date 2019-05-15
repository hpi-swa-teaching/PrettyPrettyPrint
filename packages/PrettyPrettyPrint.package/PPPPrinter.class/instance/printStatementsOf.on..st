helpers-printing
printStatementsOf: aNode on: aBuffer 

	| statementIsPragmaNode |
	
	aNode statements
		do: [ :statement |
			(statement precededByEmptyLine and: [ self profile keepEmptyLines ]) ifTrue: [ self newLineIndentOn: aBuffer ].
			aBuffer nextPutAll: (self visitValueNode: statement).
			statementIsPragmaNode := statement isPragmaNode ]
		separatedBy: [
			statementIsPragmaNode ifFalse: [ aBuffer nextPut: $. ].
			self newLineIndentOn: aBuffer ].
	
	self profile dotAfterReturn ifTrue: [ aBuffer nextPut: $. ]