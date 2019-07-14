testing
testNumbers
	
	| tokenizer |
	
	tokenizer := PPPTokenizer on: '6 7.7 3.1415 -15 -15.5 16rBEeF -16rBEeF'.
	self
		assert: { '6' . #number } equalsToken: tokenizer next;
		assert: { '7.7' . #number } equalsToken: tokenizer next;
		assert: { '3.1415' . #number } equalsToken: tokenizer next;
		assert: { '-15' . #number } equalsToken: tokenizer next;
		assert: { '-15.5' . #number } equalsToken: tokenizer next;
		assert: { '16rBEeF' . #number } equalsToken: tokenizer next;
		assert: { '-16rBEeF' . #number } equalsToken: tokenizer next