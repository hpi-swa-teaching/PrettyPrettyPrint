as yet unclassified
visitBlockNode: aNode
	buffer nextPut: $[.
	aNode bindings ifNotEmpty: [ buffer space ].
	aNode bindings do: [ :name | buffer nextPutAll: name; space ].
	aNode bindings ifNotEmpty: [ buffer nextPut: $| ].
	
	buffer cr.
	self incrementIndent.
	
	aNode bodySequence accept: self.
	
	buffer space; nextPut: $].
	self decrementIndent