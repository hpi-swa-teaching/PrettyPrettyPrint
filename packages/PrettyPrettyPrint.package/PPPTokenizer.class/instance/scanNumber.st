scanning
scanNumber
	| token positionBeforeParsing positionAfterParsing |
	
	token := PPPToken new
		position: self indexCount;
		tokenType: #number;
		yourself.
	
	positionBeforeParsing := self stream position.
	self stream position: positionBeforeParsing - 1.
	SqNumberParser parse: self stream.
	positionAfterParsing := self stream position.
	
	self stream position: positionBeforeParsing - 1.
	self buffer nextPutAll: (self stream next: positionAfterParsing - positionBeforeParsing + 1).
	
	self step.
	
	^token
		content: self buffer contents;
		yourself