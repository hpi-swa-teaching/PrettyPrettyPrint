as yet unclassified
testVisitCascadeNodeLength
	
	| aCascadeNode |
	aCascadeNode := PPPCascadeNode new 
		receiver: self variableNode;
		messages: self unaryMessagesInCascade.
			
	PPPPreprocessor new visitCascadeNode: aCascadeNode.
	
	self assert: 33 equals: aCascadeNode length