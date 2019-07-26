parsing
parsePragmaTokenStream: aStream
	
	self stream: aStream.
	
	^ self parsePragma