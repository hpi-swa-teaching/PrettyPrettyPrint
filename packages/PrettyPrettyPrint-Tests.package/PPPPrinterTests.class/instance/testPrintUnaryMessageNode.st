testing
testPrintUnaryMessageNode
	
	| messageNode argumentNodes selector printer receiverNode 
		formattedMessage |
	
	printer := PPPPrinter new.
	messageNode := PPPMessageNode new.
	receiverNode := PPPVariableNode new name: 'self'.
	selector := 'send'.
	argumentNodes := OrderedCollection new.
	
	messageNode
		receiver: receiverNode;
		selector: selector;
		arguments: argumentNodes.
	messageNode accept: printer.
	formattedMessage := printer wholeContent.
	self assert: 'self send' equals: formattedMessage