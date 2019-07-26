pretty-print
prettyPrintMethod: aPPPMethodNode
	
	^ self
		visitMethodNode: aPPPMethodNode;
		wholeContent