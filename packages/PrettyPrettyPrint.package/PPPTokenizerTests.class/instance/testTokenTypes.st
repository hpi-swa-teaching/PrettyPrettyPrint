testing
testTokenTypes
	| stream tokenizer |
	
	stream := 'someMessage|tmp|tmp:=123123*2.^tmp'.
	tokenizer := PPPTokenizer on: stream.
	
	self
		assert: {'someMessage'. #identifier} equalsToken: tokenizer next;
		assert: {'|'. #special} equalsToken: tokenizer next;
		assert: {'tmp'. #identifier} equalsToken: tokenizer next;
		assert: {'|'. #special} equalsToken: tokenizer next;
		assert: {'tmp'. #identifier} equalsToken: tokenizer next;
		assert: {':='. #assignment} equalsToken: tokenizer next;
		assert: {'123123'. #number} equalsToken: tokenizer next;
		assert: {'*'. #binaryOperator} equalsToken: tokenizer next;
		assert: {'2'. #number} equalsToken: tokenizer next;
		assert: {'.'. #special} equalsToken: tokenizer next;
		assert: {'^'. #special} equalsToken: tokenizer next;
		assert: {'tmp'. #identifier} equalsToken: tokenizer next