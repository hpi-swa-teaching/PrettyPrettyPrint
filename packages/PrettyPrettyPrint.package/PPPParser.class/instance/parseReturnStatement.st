as yet unclassified
parseReturnStatement
	self step: #special.
	
	^self parseStatement: PPPParserState new