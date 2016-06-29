visit-node
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
		ifTrue: [ self incrementIndent; newLineIndentOn: buffer ]
		ifFalse: [ self profile encloseBlockSequenceWithSpace ifTrue: [ buffer space ] ].
	
	buffer nextPutAll: (aNode bodySequence accept: self).
	
	self profile encloseBlockSequenceWithSpace ifTrue: [ buffer space ].
	buffer nextPut: $].
	multiLine ifTrue: [ self decrementIndent ].
	
	 ^ buffer contents