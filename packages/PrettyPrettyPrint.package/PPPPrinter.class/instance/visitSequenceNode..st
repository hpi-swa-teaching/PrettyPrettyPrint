as yet unclassified
visitSequenceNode: aNode

	buffer nextPutAll: '| '.
	aNode temporaries do: [ :g | buffer nextPutAll: g, ' '].
	buffer nextPut: $|.
	
	aNode statements do: [ :s | s accept: self].
	
	aNode return accept: self.