testing
testCharacters
	
	| tokens methodNode |
	
	methodNode := PPPParser parseMethodTokenStream: (ReadStream on: tokens).
	
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	self
		assert: PPPMessageNode
			equals: methodNode bodySequence statements first class;
		assert: '$a'
			equals: methodNode bodySequence statements first receiver value;
		assert: 'asString'
			equals: methodNode bodySequence statements first selector;
		assert: PPPLiteralNode
			equals: methodNode bodySequence statements second class;
		assert: '$$' equals: methodNode bodySequence statements second value