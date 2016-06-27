as yet unclassified
visitMethodNode: aNode
	| buffer |
	
	buffer := WriteStream on: ''.
		
	aNode arguments
		ifEmpty: [ buffer nextPutAll: aNode selector ]
		ifNotEmpty: [
			aNode arguments do: [ :z | buffer
			nextPutAll: z first, ' ', z second, ' ' ]].
	
	buffer cr.
	
	self
		incrementIndent;
		printIndentOn: buffer.
	
	buffer nextPutAll: (aNode bodySequence accept: self).

	^ buffer contents