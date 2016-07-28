as yet unclassified
testNamedMessageTokens

	| stream tokenizer token |
	
	stream := 'someMessage: test  blah: test2 c2: test3'.
	tokenizer := PPPTokenizer on: stream.
	
	token := tokenizer next.
	self
		assert: 0 equals: token whitespaces size;
		assert: #identifier equals: token tokenType;
		assert: 'someMessage:' equals: token content.
	
	token := tokenizer next.
	self
		assert: 1 equals: token whitespaces size;
		assert: #identifier equals: token tokenType;
		assert: 'test' equals: token content.
	
	token := tokenizer next.
	self
		assert: 2 equals: token whitespaces size;
		assert: #identifier equals: token tokenType;
		assert: 'blah:' equals: token content.
	
	token := tokenizer next.
	self
		assert: 1 equals: token whitespaces size;
		assert: #identifier equals: token tokenType;
		assert: 'test2' equals: token content.
	
	token := tokenizer next.
	self
		assert: 1 equals: token whitespaces size;
		assert: #identifier equals: token tokenType;
		assert: 'c2:' equals: token content.
	
	token := tokenizer next.
	self
		assert: 1 equals: token whitespaces size;
		assert: #identifier equals: token tokenType;
		assert: 'test3' equals: token content