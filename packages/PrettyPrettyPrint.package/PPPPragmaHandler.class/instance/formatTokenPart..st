formatting
formatTokenPart: aString
	
	aString isSymbol ifTrue: [ ^ aString ].
	
	^ Compiler evaluate: aString