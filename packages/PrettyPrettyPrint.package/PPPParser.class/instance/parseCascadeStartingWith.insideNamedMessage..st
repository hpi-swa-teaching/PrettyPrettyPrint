as yet unclassified
parseCascadeStartingWith: aMessageNode insideNamedMessage: aBoolean
	| cascade |
	cascade := PPPCascadeNode new.
	cascade messages add: aMessageNode.
	
	[self nextToken isCascade] whileTrue: [
		self step.
		cascade messages add: (self
			parseMessageSendTo: cascade receiver
			insideNamedMessage: aBoolean) ].
	
	^cascade