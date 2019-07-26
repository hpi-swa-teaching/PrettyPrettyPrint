testing
testComments
	
	| methodNode tokens |
	
	tokens := PPPTokenizer on: '" hi " test " blah " 4.
	self "i" printTest "l" "asdasd".
	"lkjh" "blbl"'.
	methodNode := PPPParser parseMethodTokenStream: tokens.
	self
		assert: 2
			equals: methodNode bodySequence statements first comments size;
		assert: 3
			equals: methodNode bodySequence statements second comments size;
		assert: 2 equals: methodNode bodySequence trailingComments size