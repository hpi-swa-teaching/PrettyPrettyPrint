as yet unclassified
testComments
	| methodNode tokens |
	
	tokens := PPPTokenizer on: '" hi " test " blah " self "i" printTest "l". "lkjh"'.
	methodNode := PPPParser new parseTokenStream: tokens.