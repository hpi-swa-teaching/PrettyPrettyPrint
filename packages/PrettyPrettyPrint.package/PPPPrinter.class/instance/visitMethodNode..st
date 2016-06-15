as yet unclassified
visitMethodNode: aNode

	aNode arguments do: [ :z | buffer
		nextPutAll: z first, ' ', z second, ' '].
	aNode bodySequence accept: self