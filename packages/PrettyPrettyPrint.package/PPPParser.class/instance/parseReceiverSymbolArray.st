parse-message-receiver
parseReceiverSymbolArray
	| receiver |
	receiver := PPPArrayNode new
		constant: true;
		yourself.
	
	self step: #symbolArrayStart.
	
	[self step isClosingRoundBrace] whileFalse: [
		(self currentToken isLiteral or: [self currentToken isIdentifier])
			ifTrue: [
				receiver contents add: (PPPLiteralNode new
					literalType: self currentToken tokenType;
					value: self currentToken content;
					yourself) ]
			ifFalse: [ ^self syntaxError ]].
		
	^receiver