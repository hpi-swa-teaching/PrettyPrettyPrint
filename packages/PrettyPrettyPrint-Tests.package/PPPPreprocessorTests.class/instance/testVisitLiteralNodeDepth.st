as yet unclassified
testVisitLiteralNodeDepth
	
	| aLiteralNode |
	
	aLiteralNode := self literalNode.
	PPPPreprocessor new visitLiteralNode: aLiteralNode.
	
	self assert: 0 equals: aLiteralNode depth.
	
	aLiteralNode := PPPLiteralNode value: '''someString''' literalType: #string.
	PPPPreprocessor new visitLiteralNode: aLiteralNode.
	
	self assert: 0 equals: aLiteralNode depth
	