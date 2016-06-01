as yet unclassified
parseReturnStatement
	self step.
	
	^PPPReturnNode new
		value: self parseStatement;
		yourself