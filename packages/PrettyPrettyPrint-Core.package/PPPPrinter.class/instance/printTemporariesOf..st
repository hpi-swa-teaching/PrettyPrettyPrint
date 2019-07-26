printing
printTemporariesOf: aPPPSequenceNode
	
	aPPPSequenceNode temporaries
		ifNotEmpty: [
			self incrementIndent.
			(self stringFitsInLine: aPPPSequenceNode temporaries first)
				ifFalse: [ self newLineIndent ].
			self currentLine nextPutAll: '| '.
			aPPPSequenceNode temporaries
				do: [ :temp |
					(self stringFitsInLine: temp)
						ifFalse: [ self newLineIndent ].
					self currentLine nextPutAll: temp , ' ' ].
			self currentLine nextPut: $|.
			self decrementIndent; newLineIndent.
			self profile newlineAfterTemporaryDeclaration
				ifTrue: [ self newLineIndent ] ]