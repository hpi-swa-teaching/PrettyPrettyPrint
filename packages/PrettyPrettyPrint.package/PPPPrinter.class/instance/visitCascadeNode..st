visit-node
visitCascadeNode: aPPPCascadeNode 
	
	|previousMultilineState prettyCascade |
	
	previousMultilineState := self printingMultiline.
	self printingMultiline: (self nodeFitsInLine: aPPPCascadeNode) not.
	self printingMultiline 
		ifTrue: [ prettyCascade := self printCascadeNodeMultiline: aPPPCascadeNode]
		ifFalse: [prettyCascade := self printCascadeNode: aPPPCascadeNode].
		
	self printingMultiline: previousMultilineState.
	
	^ prettyCascade