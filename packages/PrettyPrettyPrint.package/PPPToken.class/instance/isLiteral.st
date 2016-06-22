as yet unclassified
isLiteral
	^self isNumber or: [self isString or: [self isString or: [self isCharacter or: [self isSymbol]]]]