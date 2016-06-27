as yet unclassified
testSimpleMessagePrecedence
	| tokens methodNode sendPartMsg firstArgument secondArgument |
	tokens := (PPPTokenizer on: 'testMethod self send: 5 nope part: 3')
		skipWhitespace: true;
		yourself.
	
	methodNode := PPPParser new parseTokenStream: tokens.
	
	sendPartMsg := methodNode bodySequence statements first.
	self
		assert: PPPMessageNode equals: sendPartMsg class;
		assert: 'send:part:' equals: sendPartMsg selector;
		assert: 'self' equals: sendPartMsg receiver name.
	
	firstArgument := sendPartMsg arguments first.
	self
		assert: PPPMessageNode equals: firstArgument class;
		assert: 'nope' equals: firstArgument selector;
		assert: '5' equals: firstArgument receiver value.
	
	secondArgument := sendPartMsg arguments second.
	self
		assert: PPPLiteralNode equals: secondArgument class;
		assert: '3' equals: secondArgument value