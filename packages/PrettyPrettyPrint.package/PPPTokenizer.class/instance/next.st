accessing
next
	nextObject ifNotNil: [ | token |
		token := nextObject.
		nextObject := nil.
		^token ].
	
	^self flushToken: self nextToken