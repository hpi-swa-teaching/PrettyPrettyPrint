pretty-print
prettyPrintSequence: aPPPSequenceNode
	
	^ self
		visitSequenceNode: aPPPSequenceNode;
		wholeContent