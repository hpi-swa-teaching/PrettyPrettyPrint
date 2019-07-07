visit-node
nodesDo: aBlock 
	super nodesDo: aBlock.
	self statements do: [ :statement | statement nodesDo: aBlock ].
	self return ifNotNil: [ self return nodesDo: aBlock ]