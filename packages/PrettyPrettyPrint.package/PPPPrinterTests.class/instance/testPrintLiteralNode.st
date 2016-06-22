as yet unclassified
testPrintLiteralNode
	| stringNode numberNode numberPrinter stringPrinter |
	stringPrinter := PPPPrinter new.
	numberPrinter := PPPPrinter new.
	stringNode := PPPLiteralNode new	
		literalType: #string;
		value: 'asd';
		yourself.
	numberNode := PPPLiteralNode new
		literalType: #number;
		value: '4';
		yourself.
	
	self
		assert: '''asd''' equals: (stringNode accept: stringPrinter);
		assert: '4' equals: (numberNode accept: numberPrinter)