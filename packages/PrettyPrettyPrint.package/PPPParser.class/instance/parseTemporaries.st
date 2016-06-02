as yet unclassified
parseTemporaries
	| temporaries |
	temporaries := OrderedCollection new.
	
	(self nextToken first = #special and: [self nextToken second = '|']) ifTrue: [
		self step: #special.
		
		[self nextToken first = #special and: [self nextToken second = '|']] whileFalse: [
			temporaries add: (self step: #identifier) second ].
		
		self step: #special ].
	
	^temporaries