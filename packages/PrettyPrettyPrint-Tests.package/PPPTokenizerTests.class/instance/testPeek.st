testing
testPeek
	| tokenizer |
	tokenizer := PPPTokenizer on: '6 7.7 3.1415 -15 -15.5 16rBEeF -16rBEeF'.
	
	self
		assert: { '6'. #number } equalsToken: tokenizer peek;
		assert: { '6'. #number } equalsToken: tokenizer peek.
	
	tokenizer next.
	self assert: { '7.7'. #number } equalsToken: tokenizer peek