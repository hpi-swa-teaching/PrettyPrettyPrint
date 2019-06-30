calculate depth
collectMaximumOn: aCollection with: aBlock
	
	aCollection isEmpty 
		ifTrue: [^ 0]
		ifFalse:[^ (aCollection collect: aBlock) max]
