testing
testPrintBinaryMessageNode
	| messageNode argumentNodes receiverNode selector printer formattedMessage |
	
	printer := PPPPrinter new.
	messageNode := PPPMessageNode new.
	receiverNode := PPPVariableNode new name: '2'.
	selector := '+'.
	argumentNodes := OrderedCollection new
		add: (PPPVariableNode new name: '3');
		yourself.
	
	messageNode
		receiver: receiverNode;
		selector: selector;
		arguments: argumentNodes.
	messageNode accept: printer.
	formattedMessage := printer wholeContent.
	
	self assert: '2 + 3' equals: formattedMessage