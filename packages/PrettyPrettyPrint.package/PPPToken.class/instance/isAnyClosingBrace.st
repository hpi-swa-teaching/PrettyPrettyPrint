as yet unclassified
isAnyClosingBrace
	^self isClosingRoundBrace or: [self isClosingSquareBrace or: [self isClosingCurlyBrace]]