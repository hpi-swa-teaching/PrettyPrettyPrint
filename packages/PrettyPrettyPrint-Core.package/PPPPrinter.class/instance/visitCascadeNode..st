visit-node
visitCascadeNode: aPPPCascadeNode
	
	(self nodeFitsInLine: aPPPCascadeNode)
		ifTrue: [ self printCascadeNode: aPPPCascadeNode ]
		ifFalse: [ self printCascadeNodeMultiline: aPPPCascadeNode ]