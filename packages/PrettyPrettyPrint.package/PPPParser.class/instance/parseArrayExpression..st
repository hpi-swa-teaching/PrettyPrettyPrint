as yet unclassified
parseArrayExpression: insideNamedMessage
	| node |
	node := self parseMessageSend: insideNamedMessage.
	
	(self step: #special) content = '}' ifFalse: [ ^self syntaxError ].
	
	^node