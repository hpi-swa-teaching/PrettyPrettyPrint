as yet unclassified
visitBlockNode: aNode
	| buffer multiLine |
	
	buffer := WriteStream on: ''.
	multiLine := aNode bodySequence statements size +
		(aNode bodySequence return notNil ifTrue: [1] ifFalse: [0]) > 1.
	
	buffer nextPut: $[.
	aNode bindings ifNotEmpty: [ buffer space ].
	aNode bindings do: [ :name | buffer nextPutAll: name; space ].
	aNode bindings ifNotEmpty: [ buffer nextPut: $| ].
	
	multiLine
		ifTrue: [
			buffer cr.
			self
				incrementIndent;
				printIndentOn: buffer ]
		ifFalse: [ buffer nextPut: $  ].
	
	buffer nextPutAll: (aNode bodySequence accept: self).
	
	buffer space; nextPut: $].
	multiLine ifTrue: [
		self decrementIndent ].
	
	 ^ buffer contents