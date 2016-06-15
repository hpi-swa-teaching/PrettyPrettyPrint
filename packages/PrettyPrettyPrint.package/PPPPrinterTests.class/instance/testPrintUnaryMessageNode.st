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
	
	messageNode accept: printer.
	
	self assert: ( printer bufferContents ) equals: 'self send'