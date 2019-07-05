parse-message-receiver
parseReceiverArray
	| receiver |
	receiver := PPPArrayNode new.
	self step.
	receiver contents: self parseSequence statements.
	
	self step isClosingCurlyBrace ifFalse: [ ^self syntaxError ].
	
	^receiver