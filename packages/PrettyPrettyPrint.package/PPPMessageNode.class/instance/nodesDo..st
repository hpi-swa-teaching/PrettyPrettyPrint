visit-node
nodesDo: aBlock 
	super nodesDo: aBlock.
	self receiver ifNotNil: [ self receiver nodesDo: aBlock ].
	self arguments do: [ :argument | argument nodesDo: aBlock ]