printing
printStatementsOf: aPPPSequenceNode
	
	| statementIsPragmaNode |
	
	aPPPSequenceNode statements
		do: [ :statement |
			(self
					newLineNeededBefore: statement
					of: aPPPSequenceNode)
				ifTrue: [ self newLineIndent ].
			self visitValueNode: statement.
			statementIsPragmaNode := statement isPragmaNode ]
		separatedBy: [
			statementIsPragmaNode ifFalse: [
				self currentLine nextPut: $. ].
			self newLineIndent ].
	self profile dotAfterReturn ifTrue: [ self currentLine nextPut: $. ]