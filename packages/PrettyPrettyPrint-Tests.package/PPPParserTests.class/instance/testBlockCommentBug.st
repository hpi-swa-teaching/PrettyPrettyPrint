testing
testBlockCommentBug
	
	| methodNode tokens |
	
	"comments were being given to the sequence inside a block and not the block itself"
	tokens := PPPTokenizer on: 'test " blah " 4. "comm"
	[self 3]'.
	methodNode := PPPParser new parseMethodTokenStream: tokens.
	self
		assert: '"comm"'
		equals: methodNode bodySequence statements second comments first content