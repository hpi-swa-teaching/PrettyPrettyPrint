parse-message-receiver
parseReceiverLiteral
	
	self step.
	
	^ PPPLiteralNode new
		value: self currentToken content;
		literalType: self currentToken tokenType;
		yourself