testing
testForAllTypes
	
	| stream tokenizer |
	
	stream := ':=-ö19999999999^changeme ( $a $$ +++'.
	tokenizer := PPPTokenizer on: stream.
	self
		assert: { ':=' . #assignment } equalsToken: tokenizer next;
		assert: { '-' . #binaryOperator } equalsToken: tokenizer next;
		assert: { 'ö19999999999' . #identifier } equalsToken: tokenizer next;
		assert: { '^' . #special } equalsToken: tokenizer next;
		assert: { 'changeme' . #identifier } equalsToken: tokenizer next;
		assert: { '(' . #special } equalsToken: tokenizer next;
		assert: { '$a' . #character } equalsToken: tokenizer next;
		assert: { '$$' . #character } equalsToken: tokenizer next;
		assert: { '+++' . #binaryOperator } equalsToken: tokenizer next;
		assert: #eof equals: tokenizer next tokenType