as yet unclassified
testMessagePrecedence
	| tokens methodNode msgSend firstArg secondArg referenceMethodNode |
	tokens := PPPTokenizer on: 'testMethod self send: 5 hi + 6 test + 3 nope part: 3'.
	
	methodNode := PPPParser new parseTokenStream: tokens.
	
	firstArg := PPPMessageNode
		receiver: (PPPMessageNode receiver: (PPPLiteralNode value: '5' literalType: #number) selector: 'hi')
		selector: '+'
		argument: (PPPMessageNode
			receiver: (PPPMessageNode receiver: (PPPLiteralNode value: '6' literalType: #number) selector: 'test')
			selector: '+'
			argument: (PPPMessageNode receiver: (PPPLiteralNode value: '3' literalType: #number) selector: 'nope')).
	
	secondArg := PPPLiteralNode value: '3' literalType: #number.
	
	msgSend := PPPMessageNode
		receiver: (PPPVariableNode name: 'self')
		selector: 'send:part:'
		arguments: (Array with: firstArg with: secondArg).
	
	
	referenceMethodNode := PPPMethodNode
		bodySequence: (PPPSequenceNode temporaries: OrderedCollection new statements: { msgSend })
		selector: 'testMethod'
		arguments: {}.
	
	self assertHierarchy: referenceMethodNode equals: methodNode