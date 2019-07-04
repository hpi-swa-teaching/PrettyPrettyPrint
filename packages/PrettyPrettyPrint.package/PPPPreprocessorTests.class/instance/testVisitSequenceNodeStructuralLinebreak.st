as yet unclassified
testVisitSequenceNodeStructuralLinebreak
	
	| sequenceNode |
	
	sequenceNode := self sequenceNodeWithoutStructuralLinebreak.
	PPPPreprocessor new visitSequenceNode: sequenceNode.
	self assert: false equals: sequenceNode needsStructuralLinebreak.
	
	sequenceNode addStatement: self nodeWithStructuralLinebreak.
	PPPPreprocessor new visitSequenceNode: sequenceNode.
	self assert: true equals: sequenceNode needsStructuralLinebreak.
	
	sequenceNode := self sequenceNodeWithStructuralLinebreak.
	PPPPreprocessor new visitSequenceNode: sequenceNode.	
	self assert: true equals: sequenceNode needsStructuralLinebreak
		
	