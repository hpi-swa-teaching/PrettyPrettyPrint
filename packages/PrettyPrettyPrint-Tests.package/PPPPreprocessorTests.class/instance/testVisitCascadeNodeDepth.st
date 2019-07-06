as yet unclassified
testVisitCascadeNodeDepth
	
	| aCascadeNode |
	
	aCascadeNode := PPPCascadeNode new
		receiver: (PPPVariableNode new name: 'grosserDieter');
		messages: (OrderedCollection new
				add: (PPPMessageNode
						receiver: nil
						selector: 'first:'
						argument: ((PPPMessageNode
							receiver: (PPPVariableNode new
								name: 'self')
							selector: 'sayHello')
							hasParentheses: true));
				add: (PPPMessageNode
						receiver: nil
						selector: 'sayByeByeBaby');
				yourself).
	
	PPPPreprocessor new visitCascadeNode: aCascadeNode.
	self
		assert: 1 equals: aCascadeNode depth;
		assert: 1 equals: aCascadeNode messageDepth;
		assert: 0 equals: aCascadeNode receiverDepth