as yet unclassified
testBinaryMessageLength
	
	| firstBinaryMessageNode secondBinaryMessageNode |
	
	firstBinaryMessageNode :=  PPPMessageNode
		receiver: (PPPVariableNode name: 'variableName')
		selector: ','
		arguments: {PPPLiteralNode value: '''someStuff''' literalType: #string}.
	
	secondBinaryMessageNode := PPPMessageNode
		receiver: (PPPLiteralNode value: '''^''' literalType: #string)
		selector: ','
		arguments: {firstBinaryMessageNode}.
		
	PPPPreprocessor new visitMessageNode: secondBinaryMessageNode.
	self 
		assert: 18 equals: secondBinaryMessageNode length;
		assert: 26 equals: firstBinaryMessageNode length
	