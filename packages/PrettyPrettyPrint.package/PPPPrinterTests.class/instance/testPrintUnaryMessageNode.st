as yet unclassified
testPrintUnaryMessageNode
	| messageNode argumentNodes selector printer receiverNode |
	
	printer := PPPPrinter new.
	messageNode := PPPMessageNode new.
	receiverNode := PPPVariableNode new name: 'self'.
	selector := 'send'.
	argumentNodes :=  OrderedCollection new.
	
	messageNode
		receiver: receiverNode;
		selector: selector;
		arguments: argumentNodes.
	
	self assert: 'self send' equals: (messageNode accept: printer)