as yet unclassified
parseStatement: aState
	(self nextToken isIdentifier and: [self nextNextToken isAssignment])
		ifTrue: [ ^self parseAssignment ].
	
	^self
			parseMessageSendTo: self parseReceiver
			state: aState