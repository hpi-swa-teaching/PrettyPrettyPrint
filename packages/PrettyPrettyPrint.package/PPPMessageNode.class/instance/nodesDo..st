accessing
nodesDo: aBlock
	super nodesDo: aBlock.
	self arguments do: [ :argument | argument nodesDo: aBlock ].
	self receiver nodesDo: aBlock 