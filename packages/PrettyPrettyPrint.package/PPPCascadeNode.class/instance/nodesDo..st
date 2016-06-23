as yet unclassified
nodesDo: aBlock
	super nodesDo: aBlock.
	self messages do: [ :message | message nodesDo: aBlock ]