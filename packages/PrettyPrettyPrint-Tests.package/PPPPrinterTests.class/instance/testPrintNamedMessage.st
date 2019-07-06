testing
testPrintNamedMessage
	
	| printer msgNode formattedMessage |
	
	printer := PPPPrinter new.
	
	msgNode := PPPMessageNode
		receiver: (PPPVariableNode name: 'self')
		selector: 'print:on:by:do:'
		arguments: { PPPLiteralNode value: '1' literalType: #number . 
			PPPLiteralNode value: '2' literalType: #number . 
			PPPLiteralNode value: '3' literalType: #number . 
			PPPLiteralNode value: '4' literalType: #number }.
	msgNode accept: printer.
	formattedMessage := printer wholeContent.
	self assert: 'self print: 1 on: 2 by: 3 do: 4' equals: formattedMessage