testing
testNestedNamedMessage
	
	| tokens methodNode |
	
	tokens := { PPPToken type: #identifier content: 'testMethod' . 
		PPPToken type: #identifier content: 'self' . 
		PPPToken type: #identifier content: 'assert:' . 
		PPPToken type: #special content: '(' . 
		PPPToken type: #identifier content: 'a' . 
		PPPToken type: #identifier content: 'on:' . 
		PPPToken type: #number content: '5' . 
		PPPToken type: #special content: ')' . 
		PPPToken type: #identifier content: 'equals:' . 
		PPPToken type: #string content: 'test2' . PPPToken type: #eof content: '' }.
	
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