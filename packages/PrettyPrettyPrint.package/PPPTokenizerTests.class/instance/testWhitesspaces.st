as yet unclassified
testWhitesspaces
	| stream tokenizer |
	
	stream := '  
	  '.
	tokenizer := PPPTokenizer on: stream.
	
	self
		assert: {String space. #separator} equalsToken: tokenizer next;
		assert: {String space. #separator} equalsToken: tokenizer next;
		assert: {String cr. #separator} equalsToken: tokenizer next;
		assert: {String tab. #separator} equalsToken: tokenizer next;
		assert: {String space. #separator} equalsToken: tokenizer next;
		assert: {String space. #separator} equalsToken: tokenizer next