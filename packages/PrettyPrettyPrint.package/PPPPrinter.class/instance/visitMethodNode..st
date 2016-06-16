as yet unclassified
visitMethodNode: aNode

	aNode arguments do: [ :z | buffer
		nextPutAll: z first, ' ', z second, ' '].
	
	buffer cr.
	
	self incrementIndent.
	
	aNode bodySequence accept: self