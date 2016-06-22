as yet unclassified
testPrintLiteralNode
	| stringNode numberNode symbolNode numberPrinter stringPrinter symbolPrinter |
	stringPrinter := PPPPrinter new.
	numberPrinter := PPPPrinter new.
	symbolPrinter := PPPPrinter new.
	stringNode := PPPLiteralNode new	
		literalType: #string;
		value: 'asd';
		yourself.
	numberNode := PPPLiteralNode new
		literalType: #number;
		value: '4';
		yourself.
	symbolNode := PPPLiteralNode new
		literalType: #symbol;
		value: 'actualSymbol';
		yourself.
	
	self
		assert: '''asd''' equals: (stringNode accept: stringPrinter);
		assert: '4' equals: (numberNode accept: numberPrinter);
		assert: '#actualSymbol' equals: (symbolNode accept: symbolPrinter)