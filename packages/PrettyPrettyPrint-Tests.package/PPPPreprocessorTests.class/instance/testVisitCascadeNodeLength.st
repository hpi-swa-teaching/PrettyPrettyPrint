as yet unclassified
testVisitCascadeNodeLength
	
	| aCascadeNode |
	
	aCascadeNode := PPPCascadeNode new
		receiver: (PPPVariableNode new name: 'grosserDieter');
		messages: (OrderedCollection new
				add: (PPPMessageNode
					receiver: nil
					selector: 'sayHello');
				add: (PPPMessageNode
					receiver: nil
					selector: 'sayByeByeBaby');
				yourself).
	
	PPPPreprocessor new visitCascadeNode: aCascadeNode.
	self assert: 37 equals: aCascadeNode length