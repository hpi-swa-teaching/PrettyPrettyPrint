testing
isAnyClosingBrace
	^self isClosingRoundBrace or: [ self isClosingSquareBrace or: [ self isClosingCurlyBrace ] ]