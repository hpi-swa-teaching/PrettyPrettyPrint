testing
testComplexMethod
	| tokens methodNode firstBlock firstNamedMsgSend secondNamedMsgSend condition |
	tokens := PPPTokenizer on: (self class methodDict at: #sampleComplexMethod:b:) decompile asString.
	
	methodNode := PPPParser new parseTokenStream: tokens.
	
	firstBlock := methodNode bodySequence statements first value.
	firstNamedMsgSend := methodNode bodySequence statements second value.
	secondNamedMsgSend := methodNode bodySequence statements third value.
	condition := methodNode bodySequence statements fourth.
	
	self
		assert: 'sampleComplexMethod:b:' equals: methodNode selector;
		assert: 2 equals: methodNode bodySequence temporaries size;
		
		assert: PPPBlockNode equals: firstBlock class;
		assert: 2 equals: firstBlock bindings size;
		assert: 2 equals: firstBlock bodySequence statements size;
		
		assert: PPPMessageNode equals: firstNamedMsgSend class;
		assert: 'assert:equals:' equals: firstNamedMsgSend selector;
		
		assert: 'assert:equals:' equals: secondNamedMsgSend selector;
		assert: 2 equals: secondNamedMsgSend arguments size;
		assert: PPPMessageNode equals: secondNamedMsgSend arguments first class;
		assert: secondNamedMsgSend arguments first hasParentheses;
		assert: '''test2''' equals: secondNamedMsgSend arguments second value;
		
		assert: PPPMessageNode equals: condition class;
		assert: 'true' equals: condition receiver name;
		assert: 'ifTrue:ifFalse:' equals: condition selector;
		assert: PPPBlockNode equals: condition arguments first class;
		assert: PPPMessageNode equals: condition arguments first bodySequence statements first class;
		assert: 'Transcript' equals: condition arguments first bodySequence statements first receiver name;
		assert: 'show:' equals: condition arguments first bodySequence statements first selector