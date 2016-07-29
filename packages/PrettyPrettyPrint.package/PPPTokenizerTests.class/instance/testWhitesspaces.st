testing
testWhitesspaces
	| tokenizer token |
	
	tokenizer := PPPTokenizer on: '  
	  a'.
	
	token := tokenizer next.
	
	self
		assert: 6 equals: token whitespaces size;
		assert: ({ String space. String space. String cr. String tab. String space. String space } hasEqualElements: (token whitespaces collect: [ :t | t content ]))