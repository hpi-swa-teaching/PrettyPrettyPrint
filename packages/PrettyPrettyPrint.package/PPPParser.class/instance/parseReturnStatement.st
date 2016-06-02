as yet unclassified
parseReturnStatement
	self step: #special.
	
	^PPPReturnNode new
		value: self parseStatement;
		yourself