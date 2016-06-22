as yet unclassified
parseReceiverArray
	| receiver |
	receiver := PPPArrayNode new.
	self step: #special.
	receiver contents: self parseSequence statements.
	
	self step isClosingCurlyBrace ifFalse: [ ^self syntaxError ].
	
	^receiver