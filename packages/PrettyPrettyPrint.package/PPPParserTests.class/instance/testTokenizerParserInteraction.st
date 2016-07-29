testing
testTokenizerParserInteraction
	| tokens methodNode |
	tokens := PPPTokenizer on: 'testMessage 4 send'.
	methodNode := PPPParser new parseTokenStream: tokens.
	
	self
		assert: #testMessage equals: methodNode selector;
		assert: PPPMessageNode equals: methodNode bodySequence statements first class