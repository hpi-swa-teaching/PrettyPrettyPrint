as yet unclassified
testVisitCascadeNodeStructuralLinebreak
	
	| aCascadeNode |
	
	aCascadeNode := PPPCascadeNode new
		receiver: self nodeWithoutStructuralLinebreak;
		messages: (OrderedCollection
			with: (PPPMessageNode receiver: nil selector: 'sayQuak')
			with: (PPPMessageNode receiver: nil selector: 'sayHello')).
	PPPPreprocessor new visitCascadeNode: aCascadeNode.
	self assert: false equals: aCascadeNode needsStructuralLinebreak.
	
	aCascadeNode receiver: self nodeWithStructuralLinebreak.
	PPPPreprocessor new visitCascadeNode: aCascadeNode.
	self assert: true equals: aCascadeNode needsStructuralLinebreak.
	
	aCascadeNode
		receiver: self nodeWithoutStructuralLinebreak;
		messages: (OrderedCollection
			with: (PPPMessageNode
				receiver: nil
				selector: 'say'
				argument: self nodeWithoutStructuralLinebreak)
			with: (PPPMessageNode receiver: nil selector: 'sayHello')).
	PPPPreprocessor new visitCascadeNode: aCascadeNode.
	self assert: true equals: aCascadeNode needsStructuralLinebreak