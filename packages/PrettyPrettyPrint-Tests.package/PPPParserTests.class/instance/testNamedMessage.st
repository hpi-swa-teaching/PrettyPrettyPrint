testing
testNamedMessage
	
	| tokens methodNode |
	
	tokens := { PPPToken type: #identifier content: 'testMethod' . 
		PPPToken type: #identifier content: 'self' . 
		PPPToken type: #identifier content: 'assert:' . 
		PPPToken type: #number content: '2' . 
		PPPToken type: #identifier content: 'equals:' . 
		PPPToken type: #string content: 'test' . PPPToken type: #eof content: '' }.
	
	methodNode := PPPParser parseMethodTokenStream: (ReadStream on: tokens).
	self
		assert: methodNode bodySequence statements first class
			equals: PPPMessageNode;
		assert: methodNode bodySequence statements first receiver name
			equals: 'self';
		assert: methodNode bodySequence statements first arguments size
			equals: 2;
		assert: methodNode bodySequence statements first selector
			equals: 'assert:equals:'