initialize-release
parseTokenStream: aStream
	stream := aStream.
	emptyLineBeforeNextToken := false.
	emptyLineBeforeNextNextToken := false.
	
	^self parseMethod