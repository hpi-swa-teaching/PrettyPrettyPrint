testing
testTooLongLiteralNode
	
	| stringNode formattedString printer |
	
	stringNode := PPPLiteralNode new
		literalType: #string;
		value: '''IAmAVeryVeryVeryVeryVeryVeryVeryVeryVeryLongString''';
		yourself.
	printer := PPPPrinter new.
	self preferenceBlock value: printer profile.
	stringNode accept: printer.
	formattedString := printer wholeContent.
	self
		assert: '''IAmAVeryVeryVeryVeryVeryVeryVeryVeryVeryLongString'''
		equals: formattedString