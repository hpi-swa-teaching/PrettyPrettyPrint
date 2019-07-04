testing
testTooLongLiteralNode

	| stringNode |
	stringNode := PPPLiteralNode new		
		literalType: #string;
		value: '''IAmAVeryVeryVeryVeryVeryVeryVeryVeryVeryLongString''';
		yourself.
	
	self assert: '''IAmAVeryVeryVeryVeryVeryVeryVeryVeryVeryLongString''' equals: (stringNode accept: PPPPrinter new)