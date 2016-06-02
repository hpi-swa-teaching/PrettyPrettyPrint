as yet unclassified
testForAllTypes

	| stream tokenizer |
	
	stream := ':=-ö19999999999^changeme ('.
	tokenizer := PPPTokenizer on: stream.
	
	
	self
		assert: tokenizer next tokenType equals: #assignment;
		assert: tokenizer next tokenType equals: #binaryOperator;
		assert: tokenizer next tokenType equals: #identifier;
		assert: tokenizer next tokenType equals: #number;
		assert: tokenizer next tokenType equals: #return;
		assert: tokenizer next tokenType equals: #separator;
		assert: tokenizer next tokenType equals: #special.