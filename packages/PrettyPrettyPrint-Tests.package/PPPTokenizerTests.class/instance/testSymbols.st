testing
testSymbols
	| stream tokenizer |
	
	stream := '#test #''abc.def'' #(test ''hi-def'' blah) #multi:key:word:'.
	tokenizer := PPPTokenizer on: stream.
	
	self
		assert: { '#test'. #symbol } equalsToken: tokenizer next;
		assert: { '#''abc.def'''. #symbol } equalsToken: tokenizer next;
		assert: #symbolArrayStart equals: tokenizer next tokenType;
		assert: { 'test'. #identifier } equalsToken: tokenizer next;
		assert: { '''hi-def'''. #string } equalsToken: tokenizer next;
		assert: { 'blah'. #identifier } equalsToken: tokenizer next;
		assert: { ')'. #special } equalsToken: tokenizer next;
		assert: { '#multi:key:word:'. #symbol } equalsToken: tokenizer next