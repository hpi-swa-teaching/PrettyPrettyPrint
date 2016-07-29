helpers-printing
printStatementsOf: aNode on: aBuffer 
	aNode statements
		do: [ :statement |
			(statement precededByEmptyLine and: [ self profile keepEmptyLines ]) ifTrue: [
				self newLineIndentOn: aBuffer ].
			aBuffer nextPutAll: (self visitValueNode: statement) ]
		separatedBy: [
			aBuffer nextPut: $..
			self newLineIndentOn: aBuffer ].
	
	self profile dotAfterReturn ifTrue: [ aBuffer nextPut: $. ]