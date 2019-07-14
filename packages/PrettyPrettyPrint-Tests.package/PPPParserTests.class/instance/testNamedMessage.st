testing
testNamedMessage
	
	| tokens methodNode |
	
	methodNode := PPPParser parseMethodTokenStream: (ReadStream on: tokens).
	
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	self
		assert: methodNode bodySequence statements first class
			equals: PPPMessageNode;
		assert: methodNode bodySequence statements first receiver name
			equals: 'self';
		assert: methodNode bodySequence statements first arguments size
			equals: 2;
		assert: methodNode bodySequence statements first selector
			equals: 'assert:equals:'