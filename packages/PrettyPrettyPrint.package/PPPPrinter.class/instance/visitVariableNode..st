as yet unclassified
visitVariableNode: aNode

	buffer nextPutAll: aNode name.
	
	^ buffer contents