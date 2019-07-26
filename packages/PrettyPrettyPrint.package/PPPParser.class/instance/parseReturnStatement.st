parse-node
parseReturnStatement
	
	self step.
	
	^ PPPReturnNode value: (self parseStatement: PPPParserState new)