as yet unclassified
parseTokenStream: aStream
	stream := aStream.
	
	self step.
	
	^self parseMethod