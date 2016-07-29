testing
testEscapedString
	| stream tokenizer token |
	
	stream := '''hello'' ''hell''''o'''.
	tokenizer := PPPTokenizer on: stream.
	
	token := tokenizer next.
	
	self
		assert: #string equals: token tokenType;
		assert: 'hello' equals: token content.
		
	token := tokenizer next.
	
	self
		assert: 1 equals: token whitespaces size;
		assert: #string equals: token tokenType;
		assert: 'hell''o' equals: token content