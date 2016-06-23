as yet unclassified
testChainedMessage
	| tokens methodNode firstMsg secondMsg |
	tokens := {
		PPPToken type: #identifier content: 'testMethod'.
		PPPToken type: #identifier content: 'self'.
		PPPToken type: #identifier content: 'asString'.
		PPPToken type: #identifier content: 'test'.
		PPPToken type: #identifier content: 'hi'.
		PPPToken type: #special content: '.'.
		PPPToken type: #number content: '5'.
		PPPToken type: #binaryOperator content: '+'.
		PPPToken type: #number content: '7'.
		PPPToken type: #binaryOperator content: '+'.
		PPPToken type: #number content: '3'.
		PPPToken type: #eof content: ''}.
	
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	firstMsg := methodNode bodySequence statements first.
	secondMsg := methodNode bodySequence statements second.
	
	self
		assert: PPPMessageNode equals: firstMsg class;
		assert: PPPMessageNode equals: firstMsg receiver class;
		assert: PPPMessageNode equals: firstMsg receiver receiver class;
		assert: PPPVariableNode equals: firstMsg receiver receiver receiver class;
		assert: PPPMessageNode equals: secondMsg class;
		assert: PPPMessageNode equals: secondMsg receiver class;
		assert: PPPLiteralNode equals: secondMsg receiver receiver class;
		assert: 'hi' equals: firstMsg selector;
		assert: 'test' equals: firstMsg receiver selector;
		assert: 'asString' equals: firstMsg receiver receiver selector;
		assert: 'self' equals: firstMsg receiver receiver receiver name;
		assert: '+' equals: secondMsg selector;
		assert: 3 equals: secondMsg arguments first value;
		assert: '+' equals: secondMsg receiver selector;
		assert: '7' equals: secondMsg receiver arguments first value;
		assert: '5' equals: secondMsg receiver receiver value