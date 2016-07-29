testing
testPrintBinaryMessageNode
	| messageNode argumentNodes receiverNode selector printer |
	
	printer := PPPPrinter new.
	messageNode := PPPMessageNode new.
	receiverNode := PPPVariableNode new name: '2'.
	selector := '+'.
	argumentNodes :=  OrderedCollection new
		add: (PPPVariableNode new name: '3');
		yourself.
	
	messageNode
		receiver: receiverNode;
		selector: selector;
		arguments: argumentNodes.
	
	self assert: '2 + 3' equals: (messageNode accept: printer)