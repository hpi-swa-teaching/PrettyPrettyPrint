as yet unclassified
parseTemporaries
	| temporaries |
	temporaries := OrderedCollection new.
	
	self nextToken isPipe ifTrue: [
		self step: #special.
		
		[self nextToken isPipe] whileFalse: [
			temporaries add: (self step: #identifier) content ].
		
		self step: #special ].
	
	^temporaries