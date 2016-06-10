as yet unclassified
parseTemporaries
	| temporaries |
	temporaries := OrderedCollection new.
	
	(self nextToken tokenType = #special and: [self nextToken content = '|']) ifTrue: [
		self step: #special.
		
		[self nextToken tokenType = #special and: [self nextToken content = '|']] whileFalse: [
			temporaries add: (self step: #identifier) content ].
		
		self step: #special ].
	
	^temporaries