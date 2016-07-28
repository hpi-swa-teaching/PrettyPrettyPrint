as yet unclassified
testForAllTypes

	| stream tokenizer |
	
	stream := ':=-ö19999999999^changeme ( $a $$ +++'.
	tokenizer := PPPTokenizer on: stream.
	
	self
		assert: tokenizer next tokenType equals: #assignment;
		assert: tokenizer next tokenType equals: #binaryOperator;
		assert: tokenizer next tokenType equals: #identifier;
		assert: tokenizer next tokenType equals: #special;
		assert: tokenizer next tokenType equals: #identifier;
		assert: tokenizer next tokenType equals: #special;
		assert: {'$a'. #character} equalsToken: tokenizer next;
		assert: {'$$'. #character} equalsToken: tokenizer next;
		assert: {'+++'. #binaryOperator} equalsToken: tokenizer next;
		assert: #eof equals: tokenizer next tokenType