testing
testAssignmentInBlock
	
	| tokens methodNode |
	
	methodNode := PPPParser parseMethodTokenStream: (ReadStream on: tokens).
	
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	self
		assert: PPPAssignmentNode
		equals: methodNode bodySequence return value arguments first bodySequence statements first class