as yet unclassified
formatTokenPart: aString

	aString isSymbol 
		ifTrue: [^ aString. ].
	
	^ Compiler evaluate: aString.
	
