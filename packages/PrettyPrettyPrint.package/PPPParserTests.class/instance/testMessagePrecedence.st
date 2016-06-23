as yet unclassified
testMessagePrecedence
	| tokens methodNode sendPartMsg firstArg secondArg rightMostAdd thirdAddArgument secondAddArgument |
	tokens := (PPPTokenizer on: 'testMethod self send: 5 hi + 6 test + 3 nope part: 3')
		skipWhitespace: true;
		yourself.
	
	"MsgNode selector: send:part:; receiver: self; arguments:
	   MsgNode selector: + arguments: (MsgNode selector: nope; receiver: 3) receiver:
				MsgNode selector: + arguments: (MsgNode selector: test; receiver: 6) receiver:
					MsgNode selector: hi receiver: 5
	   LiteralNode value: 3 "
	(PPPMessageNode new
		selector: 'send:part';
		receiver: (PPPVariableNode name: 'self')).
	
	methodNode := PPPParser new parseTokenStream: tokens.
	
	sendPartMsg := methodNode bodySequence statements first.
	self
		assert: PPPMessageNode equals: sendPartMsg;
		assert: 'send:part:' equals: sendPartMsg selector;
		assert: 'self' equals: sendPartMsg receiver name.
		
	firstArg := sendPartMsg arguments first.
	self
		assert: PPPMessageNode equals: firstArg class;
		assert: '+' equals: firstArg selector;
		assert: PPPMessageNode equals: firstArg receiver class.
	
	thirdAddArgument := firstArg arguments first.
	self
		assert: PPPMessageNode equals: thirdAddArgument class;
		assert: 'nope' equals: thirdAddArgument selector;
		assert: 3 equals: thirdAddArgument receiver value.
	
	rightMostAdd := firstArg receiver.
	self
		assert: '+' equals: rightMostAdd selector;
		assert: PPPMessageNode equals: rightMostAdd receiver class.
	
	secondAddArgument := rightMostAdd receiver.
	self
		assert: 'hi' equals: secondAddArgument selector.
	
	secondArg := sendPartMsg arguments second.
	self
		assert: PPPLiteralNode equals: secondArg class;
		assert: 3 equals: secondArg value