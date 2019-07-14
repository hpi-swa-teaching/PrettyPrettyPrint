as yet unclassified
testVisitMessageNodeDepth
	
	| aMessageNode content |
	
	aMessageNode := PPPMessageNode
		receiver: (PPPVariableNode name: 'Dieter')
		selector: 'helloWorld'.
	PPPPreprocessor new visitMessageNode: aMessageNode.
	
	self assert: 0 equals: aMessageNode depth.
	
	content := OrderedCollection
		with: (PPPLiteralNode value: '1' literalType: #number)
		with: (PPPMessageNode
			receiver: (PPPVariableNode name: 'Hans')
			selector: 'hallo').
	aMessageNode receiver: (PPPArrayNode contents: content constant: false).
	PPPPreprocessor new visitMessageNode: aMessageNode.
	self assert: 1 equals: aMessageNode depth