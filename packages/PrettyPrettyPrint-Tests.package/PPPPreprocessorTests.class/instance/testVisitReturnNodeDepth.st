as yet unclassified
testVisitReturnNodeDepth
	
	| aReturnNode value content |
	value := PPPAssignmentNode variable: 'Dieter' value: (PPPVariableNode name: 'Hans').
	aReturnNode := PPPReturnNode value: value.		
	PPPPreprocessor new visitReturnNode: aReturnNode.
	
	self assert: 0 equals: aReturnNode depth.
	
	content := OrderedCollection with: (PPPLiteralNode value: '1' literalType: #number) with: (PPPMessageNode receiver: 	(PPPVariableNode name: 'Hans') selector: 'hallo').
	value := PPPAssignmentNode variable: 'Hans' value: (PPPArrayNode contents: content constant: false).
	aReturnNode value: value.
	PPPPreprocessor new visitReturnNode: aReturnNode.
	
	self assert: 1 equals: aReturnNode depth