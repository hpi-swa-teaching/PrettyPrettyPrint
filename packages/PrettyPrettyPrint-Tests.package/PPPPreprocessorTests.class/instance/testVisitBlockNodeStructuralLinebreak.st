as yet unclassified
testVisitBlockNodeStructuralLinebreak
	
	| aBlockNode |
	
	aBlockNode := PPPBlockNode bodySequence: self sequenceNodeWithoutStructuralLinebreak.
	PPPPreprocessor new visitBlockNode: aBlockNode.
	
	self assert: false equals: aBlockNode needsStructuralLinebreak.
	
	aBlockNode bodySequence: self sequenceNodeWithStructuralLinebreak.
	PPPPreprocessor new visitBlockNode: aBlockNode.
	
	self assert: true equals: aBlockNode needsStructuralLinebreak
	
	