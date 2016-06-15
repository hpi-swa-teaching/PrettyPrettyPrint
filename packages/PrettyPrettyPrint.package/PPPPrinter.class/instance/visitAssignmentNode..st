as yet unclassified
visitAssignmentNode: aNode

	aNode variable accept: self.
	buffer nextPutAll: ' := '.
	aNode value accept: self.
	buffer nextPut: $.