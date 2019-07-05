testing
testPrintLiteralNode
	| stringNode numberNode symbolNode numberPrinter stringPrinter symbolPrinter formattedString formattedNumber formattedSymbol |
	stringPrinter := PPPPrinter new.
	numberPrinter := PPPPrinter new.
	symbolPrinter := PPPPrinter new.
	stringNode := PPPLiteralNode new
		literalType: #string;
		value: '''asd''';
		yourself.
	stringNode accept: stringPrinter.
	formattedString := stringPrinter wholeContent.
	
	numberNode := PPPLiteralNode new
		literalType: #number;
		value: '4';
		yourself.
	numberNode accept: numberPrinter.
	formattedNumber := numberPrinter wholeContent.
		
	symbolNode := PPPLiteralNode new
		literalType: #symbol;
		value: '#actualSymbol';
		yourself.
	symbolNode accept: symbolPrinter.
	formattedSymbol := symbolPrinter wholeContent.
	
	self
		assert: '''asd''' equals: formattedString;
		assert: '4' equals: formattedNumber;
		assert: '#actualSymbol' equals: formattedSymbol