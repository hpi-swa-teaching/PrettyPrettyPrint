as yet unclassified
testAssignmentInBlock
	| tokenizer |
	tokenizer := PPPTokenizer on: 'peek
	^nextObject ifNil: [ nextObject := self next ]'.
	
	tokenizer skipWhitespace: true.
	
	self
		assert: #identifier equals: tokenizer next tokenType;
		assert: #special equals: tokenizer next tokenType;
		assert: #identifier equals: tokenizer next tokenType;
		assert: #identifier equals: tokenizer next tokenType;
		assert: #special equals: tokenizer next tokenType;
		assert: #identifier equals: tokenizer next tokenType;
		assert: #assignment equals: tokenizer next tokenType;
		assert: #identifier equals: tokenizer next tokenType;
		assert: #identifier equals: tokenizer next tokenType;
		assert: #special equals: tokenizer next tokenType;
		assert: #eof equals: tokenizer next tokenType