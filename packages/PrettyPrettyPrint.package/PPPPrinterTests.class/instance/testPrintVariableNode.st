as yet unclassified
testPrintVariableNode
	| node printer |
	
	printer := PPPPrinter new.
	node := PPPVariableNode new name: 'someVariable'.
	
	self assert: 'someVariable' equals: (printer visitVariableNode: node)