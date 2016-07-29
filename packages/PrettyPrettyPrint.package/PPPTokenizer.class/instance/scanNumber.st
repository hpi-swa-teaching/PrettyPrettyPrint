scanning
scanNumber
	| token positionBeforeParsing positionAfterParsing |
	token := PPPToken new
		position: indexCount;
		tokenType: #number;
		yourself.
	
	positionBeforeParsing := stream position.
	stream position: positionBeforeParsing - 1.
	SqNumberParser parse: stream.
	positionAfterParsing := stream position.
	
	stream position: positionBeforeParsing - 1.
	buffer nextPutAll: (stream next: positionAfterParsing - positionBeforeParsing + 1).
	
	self step.
	
	^token
		content: buffer contents;
		yourself