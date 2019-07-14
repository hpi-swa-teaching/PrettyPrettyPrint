as yet unclassified
testVisitReturnNodeStructuralLinebreak
	
	| returnNode |
	
	returnNode := PPPReturnNode value: self nodeWithoutStructuralLinebreak.
	PPPPreprocessor new visitReturnNode: returnNode.
	self assert: false equals: returnNode needsStructuralLinebreak.
	
	returnNode value: self nodeWithStructuralLinebreak.
	PPPPreprocessor new visitReturnNode: returnNode.
	self assert: true equals: returnNode needsStructuralLinebreak.
	