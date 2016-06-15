as yet unclassified
testEscapedString
	| stream tokenizer token |
	
	stream := '''hello'' ''hell''''o'''.
	tokenizer := PPPTokenizer on: stream.
	
	token := tokenizer next.
	
	self
		assert: #string equals: token tokenType;
		assert: 'hello' equals: token content.
		
	token := tokenizer next.
	
	self assert: #separator equals: token tokenType.
		
	token := tokenizer next.
	
	self
		assert: #string equals: token tokenType;
		assert: 'hell''o' equals: token content