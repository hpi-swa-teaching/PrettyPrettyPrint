testing
testPrintVariableNode
	
	| node printer formattedVariable |
	
	printer := PPPPrinter new.
	node := PPPVariableNode new name: 'someVariable'.
	printer visitVariableNode: node.
	formattedVariable := printer wholeContent.
	self assert: 'someVariable' equals: formattedVariable