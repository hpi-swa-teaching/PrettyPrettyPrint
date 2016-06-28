parse-node
parseTemporaries
	| temporaries |
	temporaries := OrderedCollection new.
	
	self nextToken isPipe ifTrue: [
		self step.
		
		[self nextToken isPipe] whileFalse: [
			temporaries add: (self step: #identifier) content ].
		
		self step ].
	
	^temporaries