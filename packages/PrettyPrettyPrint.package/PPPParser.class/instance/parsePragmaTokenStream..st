parse-declaration
parsePragmaTokenStream: aStream
	self stream: aStream.
	
	^self parsePragma