as yet unclassified
visitReturnNode: aNode

	buffer nextPut: $^.
	
	self class spaceBeforeReturn ifTrue: [
		buffer nextPut: $  ].
	
	" FIXME: this actually is not a string but an arbitrary node "
	buffer nextPutAll: aNode value