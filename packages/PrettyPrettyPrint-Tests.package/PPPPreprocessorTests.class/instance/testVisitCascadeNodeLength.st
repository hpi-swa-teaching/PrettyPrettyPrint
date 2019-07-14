as yet unclassified
testVisitCascadeNodeLength
	
	| aCascadeNode |
	aCascadeNode := PPPCascadeNode new 
		receiver: self variableNode;
		messages: (OrderedCollection new 
			add: (PPPMessageNode receiver: nil selector: 'firstMessage');
			add: (PPPMessageNode receiver: nil selector: 'secondMessage');
			yourself).
			
	PPPPreprocessor new visitCascadeNode: aCascadeNode.
	
	
	self assert: 36 equals: aCascadeNode length