as yet unclassified
visitBlockNode: aNode
	| buffer |
	
	buffer := WriteStream on: ''.

	buffer nextPut: $[.
	aNode bindings ifNotEmpty: [ buffer space ].
	aNode bindings do: [ :name | buffer nextPutAll: name; space ].
	aNode bindings ifNotEmpty: [ buffer nextPut: $| ].
	
	buffer cr.
	self incrementIndent.
	
	buffer nextPutAll: (aNode bodySequence accept: self).
	
	buffer space; nextPut: $].
	self decrementIndent.
	
	 ^ buffer contents