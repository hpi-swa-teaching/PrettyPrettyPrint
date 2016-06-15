as yet unclassified
testPrintVariableNode
	| node printer |
	
	printer := PPPPrinter new.
	node := PPPVariableNode new name: 'someVariable'.
	
	printer visitVariableNode: node.
	
	self assert: ( printer bufferContents ) equals: 'someVariable'