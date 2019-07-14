as yet unclassified
testVisitMessageNodeLength
	
	| aMessageNode content |
	
	aMessageNode := PPPMessageNode
		receiver: (PPPVariableNode name: 'Dieter')
		selector: 'helloWorld'.
	PPPPreprocessor new visitMessageNode: aMessageNode.
	
	self assert: 17 equals: aMessageNode length.
	
	content := OrderedCollection
		with: (PPPLiteralNode value: '1' literalType: #number)
		with: (PPPMessageNode
			receiver: (PPPVariableNode name: 'Hans')
			selector: 'hallo').
	aMessageNode receiver: (PPPArrayNode contents: content constant: false).
	PPPPreprocessor new visitMessageNode: aMessageNode.
	self assert: 27 equals: aMessageNode length