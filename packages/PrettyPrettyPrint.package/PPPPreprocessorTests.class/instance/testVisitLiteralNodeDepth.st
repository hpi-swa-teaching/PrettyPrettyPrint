as yet unclassified
testVisitLiteralNodeDepth
	
	| aLiteralNode |
	
	aLiteralNode := PPPLiteralNode value: '1' literalType: #number.
	PPPPreprocessor new visitLiteralNode: aLiteralNode.
	
	self assert: 0 equals: aLiteralNode depth.
	
	aLiteralNode := PPPLiteralNode value: '''Dieter''' literalType: #string.
	PPPPreprocessor new visitLiteralNode: aLiteralNode.
	
	self assert: 0 equals: aLiteralNode depth
	