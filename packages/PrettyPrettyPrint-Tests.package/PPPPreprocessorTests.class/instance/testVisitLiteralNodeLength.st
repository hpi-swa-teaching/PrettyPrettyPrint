as yet unclassified
testVisitLiteralNodeLength
	
	| aLiteralNode |
	
	aLiteralNode := self literalNode.
	PPPPreprocessor new visitLiteralNode: aLiteralNode.
	
	self assert: 1 equals: aLiteralNode length.
	
	aLiteralNode := PPPLiteralNode
		value: '''someString'''
		literalType: #string.
	PPPPreprocessor new visitLiteralNode: aLiteralNode.
	self assert: 12 equals: aLiteralNode length