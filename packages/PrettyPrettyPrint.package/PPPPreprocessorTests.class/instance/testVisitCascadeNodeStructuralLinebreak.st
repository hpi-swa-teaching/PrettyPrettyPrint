as yet unclassified
testVisitCascadeNodeStructuralLinebreak
	
	| aCascadeNode |
	
	aCascadeNode := PPPCascadeNode new
		receiver: self nodeWithoutStructuralLinebreak;
		messages: self unaryMessagesInCascade.
	PPPPreprocessor new visitCascadeNode: aCascadeNode.
	self assert: false equals: aCascadeNode needsStructuralLinebreak.
	
	aCascadeNode receiver: self nodeWithStructuralLinebreak.
	PPPPreprocessor new visitCascadeNode: aCascadeNode.
	self assert: true equals: aCascadeNode needsStructuralLinebreak.
	
	aCascadeNode
		receiver: self nodeWithoutStructuralLinebreak;
		messages: self mixedMessagesInCascade.
	PPPPreprocessor new visitCascadeNode: aCascadeNode.
	self assert: true equals: aCascadeNode needsStructuralLinebreak