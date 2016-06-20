as yet unclassified
parseBlockExpression: insideNamedMessage
	| node |
	node := self parseMessageSend: insideNamedMessage.
	
	(self step: #special) content = ']' ifFalse: [ ^self syntaxError ].
	
	^node