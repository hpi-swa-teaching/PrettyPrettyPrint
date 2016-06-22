as yet unclassified
parseStatement: insideNamedMessage
	(self nextToken tokenType = #identifier and:
	[self nextNextToken tokenType = #assignment]) ifTrue: [ ^self parseAssignment ].
	
	^self
		parseMessageSendTo: self parseReceiver
		insideNamedMessage: insideNamedMessage