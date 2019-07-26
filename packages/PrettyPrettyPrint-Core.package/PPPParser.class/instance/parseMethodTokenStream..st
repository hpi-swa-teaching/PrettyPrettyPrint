parsing
parseMethodTokenStream: aStream
	
	self stream: aStream.
	
	^ self parseMethod