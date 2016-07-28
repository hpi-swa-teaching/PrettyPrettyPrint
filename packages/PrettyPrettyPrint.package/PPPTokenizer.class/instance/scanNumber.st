scanning
scanNumber
	"called whenever we know that the first character of our next token is a digit."
	
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
	
	^self flushToken: (token
		content: buffer contents;
		yourself)