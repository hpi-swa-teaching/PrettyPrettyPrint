as yet unclassified
parseReceiverBlock
	| receiver |
	receiver := PPPBlockNode new.
	self step.
	
	[self nextToken isBlockBinding] whileTrue: [ receiver addBinding: (self step: #identifier) ].
	
	receiver bindings ifNotEmpty: [ self step: #special ].
	receiver bodySequence: self parseSequence.
	
	self step isClosingSquareBrace ifFalse: [ ^self syntaxError ].
	
	^receiver