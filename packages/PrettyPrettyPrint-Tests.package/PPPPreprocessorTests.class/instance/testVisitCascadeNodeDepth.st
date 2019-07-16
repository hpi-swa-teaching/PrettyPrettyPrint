as yet unclassified
testVisitCascadeNodeDepth
	
	| aCascadeNode |
	aCascadeNode := PPPCascadeNode new 
		receiver: self variableNode;
		messages: (OrderedCollection new 
			add: self keywordMessageWithComplexArgument;	
			add: self unaryMessageInCascade;
			yourself).
			
	PPPPreprocessor new visitCascadeNode: aCascadeNode.
	
	self 
		assert: 1 equals: aCascadeNode depth;
		assert: 1 equals: aCascadeNode messageDepth;
		assert: 0 equals: aCascadeNode receiverDepth.