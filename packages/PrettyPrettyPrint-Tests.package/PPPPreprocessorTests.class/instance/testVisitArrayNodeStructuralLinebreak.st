as yet unclassified
testVisitArrayNodeStructuralLinebreak
	
	| anArrayNode content |
	
	content := OrderedCollection
		with: self nodeWithoutStructuralLinebreak
		with:  self nodeWithoutStructuralLinebreak.
	
	anArrayNode := PPPArrayNode contents: content constant: true.	
	PPPPreprocessor new visitArrayNode: anArrayNode.
	self assert: false equals: anArrayNode needsStructuralLinebreak.
	
	anArrayNode constant: false.
	PPPPreprocessor new visitArrayNode: anArrayNode.
	self assert: false equals: anArrayNode needsStructuralLinebreak.
		
	content add: self nodeWithStructuralLinebreak.
	anArrayNode contents: content.
	PPPPreprocessor new visitArrayNode: anArrayNode.
	self assert: true equals: anArrayNode needsStructuralLinebreak	