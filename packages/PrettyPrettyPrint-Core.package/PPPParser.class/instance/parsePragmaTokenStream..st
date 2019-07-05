parse-declaration
parsePragmaTokenStream: aStream
	stream:= aStream.
	
	^self parsePragma