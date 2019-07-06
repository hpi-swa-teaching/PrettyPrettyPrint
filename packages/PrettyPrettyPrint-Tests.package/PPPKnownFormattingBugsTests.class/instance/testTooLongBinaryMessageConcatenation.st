as yet unclassified
testTooLongBinaryMessageConcatenation
	
	| method formatteMethod |
	
	method := 'testMethod
	| test |
	
	self
		assert: ((PPPAssignmentNode
				variable: ''Dieter''
				value: (PPPVariableNode name: ''Hans''))
			matches: (PPPAssignmentNode
				variable: ''Dieter''
				value: (PPPVariableNode name: ''Hans'')))'.
	
	formatteMethod := PPPPrinter
		format: method
		preferences: PPPPrinterTests new preferenceBlock.
	self assert: method equals: formatteMethod