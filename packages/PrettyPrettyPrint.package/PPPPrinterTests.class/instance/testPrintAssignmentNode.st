as yet unclassified
testPrintAssignmentNode
	| printer assignmentNode valueNode variableNode |

	variableNode := PPPVariableNode new name: 'myVar'.
	valueNode := PPPLiteralNode new.
	valueNode	
		literalType: #string;
		value: 'myValue'.
		
	assignmentNode := PPPAssignmentNode new
		variable: variableNode;
		value: valueNode.
	
	printer := PPPPrinter new.
	
	assignmentNode accept: printer.
	
	self assert: ( printer bufferContents ) equals: 'myVar := ''myValue'''