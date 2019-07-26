accessing
next
	
	self nextObject
		ifNotNil: [
			| token |
			
			token := self nextObject.
			self nextObject: nil.
			^ token ].
	
	^ self flushToken: self nextToken