parsing
parseSequenceTokenStream: aStream
	
	self stream: aStream.
	
	^ self parseSequence