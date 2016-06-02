as yet unclassified
testTokenTypes

	| stream tokenizer |
	
	stream := 'someMessage|tmp|tmp:=123123*2.^tmp'.
	tokenizer := PPPTokenizer on: stream.
	
	
	self
		assert: tokenizer next tokenType equals: #identifier;
		assert: tokenizer next tokenType equals: #special;
		assert: tokenizer next tokenType equals: #identifier;
		assert: tokenizer next tokenType equals: #special;
		assert: tokenizer next tokenType equals: #identifier;
		assert: tokenizer next tokenType equals: #assignment;
		assert: tokenizer next tokenType equals: #number;
		assert: tokenizer next tokenType equals: #binaryOperator;
		assert: tokenizer next tokenType equals: #number;
		assert: tokenizer next tokenType equals: #special;
		assert: tokenizer next tokenType equals: #return
	
	
	
	
