as yet unclassified
scanNumber
	"called whenever we kn ow that the first character of our next token is a digit."
	
	| token |
	token := PPPToken new
		position: indexCount;
		tokenType: #number;
		yourself.
	
	[characterType = #digit ] whileTrue: [
		buffer nextPut: currentCharacter.
		self step ].
	
	^token
		content: buffer contents;
		yourself