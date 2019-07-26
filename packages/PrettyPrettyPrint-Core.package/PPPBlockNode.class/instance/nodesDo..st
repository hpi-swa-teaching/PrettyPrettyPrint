visit-node
nodesDo: aBlock
	
	super nodesDo: aBlock.
	self bodySequence nodesDo: aBlock