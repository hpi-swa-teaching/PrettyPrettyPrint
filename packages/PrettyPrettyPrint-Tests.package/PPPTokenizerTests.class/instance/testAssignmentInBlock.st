testing
testAssignmentInBlock
	
	| tokenizer |
	
	tokenizer := PPPTokenizer
		on: 'peek
	^nextObject ifNil: [ nextObject := self next ]'.
	self
		assert: { 'peek' . #identifier } equalsToken: tokenizer next;
		assert: { '^' . #special } equalsToken: tokenizer next;
		assert: { 'nextObject' . #identifier } equalsToken: tokenizer next;
		assert: { 'ifNil:' . #identifier } equalsToken: tokenizer next;
		assert: { '[' . #special } equalsToken: tokenizer next;
		assert: { 'nextObject' . #identifier } equalsToken: tokenizer next;
		assert: { ':=' . #assignment } equalsToken: tokenizer next;
		assert: { 'self' . #identifier } equalsToken: tokenizer next;
		assert: { 'next' . #identifier } equalsToken: tokenizer next;
		assert: { ']' . #special } equalsToken: tokenizer next;
		assert: #eof equals: tokenizer next tokenType