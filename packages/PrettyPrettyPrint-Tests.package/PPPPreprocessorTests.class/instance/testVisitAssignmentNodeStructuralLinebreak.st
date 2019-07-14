as yet unclassified
testVisitAssignmentNodeStructuralLinebreak
	
	| anAssignmentNode value |
	
	value := self nodeWithoutStructuralLinebreak.
	anAssignmentNode := PPPAssignmentNode variable: 'variable' value: value.		
	PPPPreprocessor new visitAssignmentNode: anAssignmentNode.
	
	self assert: false equals: anAssignmentNode needsStructuralLinebreak.
	
	value := self nodeWithStructuralLinebreak .
	anAssignmentNode value: value.
	PPPPreprocessor new visitAssignmentNode: anAssignmentNode.
	
	self assert: true equals: anAssignmentNode needsStructuralLinebreak
	