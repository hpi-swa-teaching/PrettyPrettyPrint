visit-node
visitMethodNode: aNode

	| buffer |
	buffer := WriteStream on: ''.
	
	aNode arguments
		ifEmpty: [ buffer nextPutAll: aNode selector ]
		ifNotEmpty: [ aNode arguments
			do: [ :arg | buffer nextPutAll: arg first , ' ' , arg second ]
			separatedBy: [ buffer nextPut: $  ] ].
	
	(self newLineAfterSelectorNeededFor: aNode) ifTrue: [ self newLineIndentOn: buffer ].
	
	self
		incrementIndent;
		newLineIndentOn: buffer.
	
	buffer nextPutAll: (aNode bodySequence accept: self).
	
	^ buffer contents