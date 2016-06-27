as yet unclassified
visitCascadeNode: aNode
	| buffer |
	buffer := WriteStream on: ''.
	
	self printOpenParethesesOf: aNode on: buffer.
	
	buffer nextPutAll: (aNode receiver accept: self); cr.
	self incrementIndent.
	
	aNode messages
		do: [ :message |
			self printIndentOn: buffer.
			buffer nextPutAll: (message accept: self) ]
		separatedBy: [ buffer nextPut: $;; cr ].
	
	self
		decrementIndent;
		printOpenParethesesOf: aNode on: buffer.
	
	^buffer contents