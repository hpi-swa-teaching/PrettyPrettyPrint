testing
testAssignment
	
	| tokens methodNode |
	
	methodNode := PPPParser parseMethodTokenStream: (ReadStream on: tokens).
	
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	self
		assert: methodNode bodySequence statements first class
			equals: PPPAssignmentNode;
		assert: methodNode bodySequence statements first variable
			equals: 'tmp';
		assert: methodNode bodySequence statements first value class
			equals: PPPMessageNode;
		assert: methodNode bodySequence statements first value selector
			equals: '*'