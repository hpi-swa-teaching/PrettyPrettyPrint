parse-message-receiver
parseReceiverSymbolArray
	
	| receiver |
	
	receiver := PPPArrayNode new
		constant: true;
		yourself.
	
	self step: #symbolArrayStart.
	
	[ self step isClosingRoundBrace ]
		whileFalse: [ self parseSymbolArrayElementFor: receiver ].
	
	^ receiver