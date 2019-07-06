as yet unclassified
testVisitAssignmentNodeDepth
	
	| anAssignmentNode content |
	
	anAssignmentNode := PPPAssignmentNode
		variable: 'Dieter'
		value: (PPPVariableNode name: 'Hans').
	PPPPreprocessor new visitAssignmentNode: anAssignmentNode.
	
	self assert: 0 equals: anAssignmentNode depth.
	
	content := OrderedCollection with: (PPPLiteralNode
		value: '1'
		literalType: #number) with: (PPPMessageNode
		receiver: (PPPVariableNode name: 'Hans')
		selector: 'hallo').
	anAssignmentNode value: (PPPArrayNode contents: content constant: false).
	PPPPreprocessor new visitAssignmentNode: anAssignmentNode.
	self assert: 1 equals: anAssignmentNode depth