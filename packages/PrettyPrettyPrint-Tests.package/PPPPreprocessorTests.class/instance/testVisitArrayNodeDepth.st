as yet unclassified
testVisitArrayNodeDepth
	
	| anArrayNode content |
	content := OrderedCollection with: (PPPLiteralNode value: '1' literalType: #number) with: (PPPVariableNode name: 'Hans').
	anArrayNode := PPPArrayNode contents: content constant: true.
			
	PPPPreprocessor new visitArrayNode: anArrayNode.
	
	self assert: 1 equals: anArrayNode depth.
	
	content := OrderedCollection with: (PPPLiteralNode value: '1' literalType: #number) with: (PPPArrayNode contents: content constant: true).
	anArrayNode contents: content.
	anArrayNode constant: false.
	PPPPreprocessor new visitArrayNode: anArrayNode.
	
	self assert: 2 equals: anArrayNode depth