as yet unclassified
parseReceiverArray
	| receiver |
	receiver := PPPArrayNode new.
	self step: #special.
	receiver contents: self parseSequence statements.
	
	(self step: #special) content = '}' ifFalse: [ ^self syntaxError ].
	
	^receiver