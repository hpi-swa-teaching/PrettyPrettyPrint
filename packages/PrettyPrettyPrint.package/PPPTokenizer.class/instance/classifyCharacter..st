as yet unclassified
classifyCharacter: aCharacter
	aCharacter ifNil: [ ^#eof ].
	('|{[()]}.^;' includes: aCharacter)  ifTrue: [ ^#special ].
	aCharacter isDigit ifTrue: [ ^#digit ].
	aCharacter isLetter ifTrue: [ ^#letter ].
	aCharacter isSpecial ifTrue: [ ^#binaryOperator ].
	aCharacter isSeparator ifTrue: [ ^#separator ].
	^#other