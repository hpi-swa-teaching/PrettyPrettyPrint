as yet unclassified
parseStatement: insideNamedMessage
	| message |
	(self nextToken isIdentifier and: [self nextNextToken isAssignment])
		ifTrue: [ ^self parseAssignment ].
	
	message := self
		parseMessageSendTo: self parseReceiver
		insideNamedMessage: insideNamedMessage.
	
	(self nextToken isCascade and: [message class = PPPMessageNode]) ifTrue: [
		^self parseCascadeStartingWith: message insideNamedMessage: insideNamedMessage ].
	
	^message