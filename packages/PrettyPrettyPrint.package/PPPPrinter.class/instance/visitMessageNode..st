visit-node
visitMessageNode: aPPPMessageNode 
	
	|previousMultilineState prettyMessage |
	
	previousMultilineState := self printingMultiline.
	self printingMultiline: (self nodeFitsInLine: aPPPMessageNode) not.
	self printingMultiline 
		ifTrue: [ prettyMessage := self printMessageNodeMultiline: aPPPMessageNode]
		ifFalse: [prettyMessage := self printMessageNode: aPPPMessageNode].
		
	self printingMultiline: previousMultilineState.
	
	^ prettyMessage