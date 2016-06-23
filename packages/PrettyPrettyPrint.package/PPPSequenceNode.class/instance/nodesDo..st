as yet unclassified
nodesDo: aBlock
	super nodesDo: aBlock.
	self statements do: [ :statement | statements nodesDo: aBlock ].
	self return nodesDo: aBlock