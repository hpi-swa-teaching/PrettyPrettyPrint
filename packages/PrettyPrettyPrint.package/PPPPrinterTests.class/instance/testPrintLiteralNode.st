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
	
	stringNode accept: stringPrinter.
	numberNode accept: numberPrinter.
	
	self assert: ( stringPrinter bufferContents ) equals: '''asd'''.
	self assert: ( numberPrinter bufferContents ) equals: '4'