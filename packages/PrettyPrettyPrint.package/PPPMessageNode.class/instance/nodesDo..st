accessing
nodesDo: aBlock
	super nodesDo: aBlock.
	self arguments do: [ :argument | argument second nodesDo: aBlock ].
	self receiver nodesDo: aBlock 