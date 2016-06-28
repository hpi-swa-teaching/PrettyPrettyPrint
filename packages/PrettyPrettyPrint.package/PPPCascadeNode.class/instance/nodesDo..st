visit-node
nodesDo: aBlock
	super nodesDo: aBlock.
	self receiver nodesDo: aBlock.
	self messages do: [ :message | message nodesDo: aBlock ]