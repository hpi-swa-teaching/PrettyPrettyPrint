as yet unclassified
parseReceiverBlock
	| receiver |
	receiver := PPPBlockNode new.
	self step.
		
	[self nextToken tokenType = #identifier and: [self nextToken content first = $:]] whileTrue: [
		receiver addBinding: (self step: #identifier) ].
	
	receiver bindings ifNotEmpty: [ self step: #special ].
	receiver bodySequence: self parseSequence.
	
	(self step: #special) content = ']' ifFalse: [ ^self syntaxError ].
	
	^receiver