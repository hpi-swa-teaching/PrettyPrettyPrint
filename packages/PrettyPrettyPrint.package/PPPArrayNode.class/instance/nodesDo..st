visit-node
nodesDo: aBlock
	super nodesDo: aBlock.
	self contents do: [ :content | content nodesDo: aBlock ]