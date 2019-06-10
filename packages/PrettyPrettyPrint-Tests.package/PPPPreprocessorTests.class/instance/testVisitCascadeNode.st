as yet unclassified
testVisitCascadeNode
	
	| aCascadeNode |
	aCascadeNode := PPPCascadeNode new 
		receiver: (PPPVariableNode new name: 'grosserDieter');
		messages: (OrderedCollection new 
			add: (PPPMessageNode receiver: nil selector: 'sayHello');
			add: (PPPMessageNode receiver: nil selector: 'sayByeByeBaby');
			yourself).
			
	PPPPreprocessor new visitCascadeNode: aCascadeNode.
	
	
	self 
		assert: 38 equals: aCascadeNode length;
		assert: 0 equals: aCascadeNode depth;
		assert: 0 equals: aCascadeNode messageDepth;
		assert: 0 equals: aCascadeNode receiverDepth.