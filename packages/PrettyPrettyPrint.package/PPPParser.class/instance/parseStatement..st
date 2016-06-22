as yet unclassified
parseStatement: insideNamedMessage
	(self nextToken isIdentifier and: [self nextNextToken isAssignment])
		ifTrue: [ ^self parseAssignment ].
	
	^self
		parseMessageSendTo: self parseReceiver
		insideNamedMessage: insideNamedMessage