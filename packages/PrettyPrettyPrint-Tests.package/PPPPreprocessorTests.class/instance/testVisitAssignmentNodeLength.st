as yet unclassified
testVisitAssignmentNodeLength
	
	| anAssignmentNode content |
	
	anAssignmentNode := PPPAssignmentNode
		variable: 'Dieter'
		value: (PPPVariableNode name: 'Hans').
	PPPPreprocessor new visitAssignmentNode: anAssignmentNode.
	
	self assert: 14 equals: anAssignmentNode length.
	
	content := OrderedCollection
		with: (PPPLiteralNode value: '1' literalType: #number)
		with: (PPPMessageNode
			receiver: (PPPVariableNode name: 'Hans')
			selector: 'hallo').
	anAssignmentNode value: (PPPArrayNode contents: content constant: false).
	PPPPreprocessor new visitAssignmentNode: anAssignmentNode.
	self assert: 26 equals: anAssignmentNode length