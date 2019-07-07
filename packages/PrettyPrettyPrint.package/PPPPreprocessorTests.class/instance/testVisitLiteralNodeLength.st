as yet unclassified
testVisitLiteralNodeLength
	
	| aLiteralNode |
	
	aLiteralNode := PPPLiteralNode value: '1' literalType: #number.
	PPPPreprocessor new visitLiteralNode: aLiteralNode.
	
	self assert: 1 equals: aLiteralNode length.
	
	aLiteralNode := PPPLiteralNode value: '''Dieter''' literalType: #string.
	PPPPreprocessor new visitLiteralNode: aLiteralNode.
	
	self assert: 8 equals: aLiteralNode length
	