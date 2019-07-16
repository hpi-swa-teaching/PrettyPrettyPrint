as yet unclassified
testVisitLiteralNodeDepth
	
	| aLiteralNode |
	
	aLiteralNode := PPPLiteralNode value: '1' literalType: #number.
	PPPPreprocessor new visitLiteralNode: aLiteralNode.
	
	self assert: 0 equals: aLiteralNode depth.
	
	aLiteralNode := PPPLiteralNode value: '''someString''' literalType: #string.
	PPPPreprocessor new visitLiteralNode: aLiteralNode.
	
	self assert: 0 equals: aLiteralNode depth
	