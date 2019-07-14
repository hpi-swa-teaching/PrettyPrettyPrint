testing
testNestedNamedMessage
	
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
			equals: 'assert:equals:';
		assert: methodNode bodySequence statements first arguments first class
			equals: PPPMessageNode;
		assert: methodNode bodySequence statements first arguments first hasParentheses
			equals: true;
		assert: methodNode bodySequence statements first arguments first receiver name
			equals: 'a';
		assert: methodNode bodySequence statements first arguments first selector
			equals: 'on:'