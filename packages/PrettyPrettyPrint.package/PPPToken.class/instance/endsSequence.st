testing
endsSequence
	^self isEof or: [ self isAnyClosingBrace ]