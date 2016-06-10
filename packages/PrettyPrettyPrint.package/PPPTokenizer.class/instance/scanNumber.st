as yet unclassified
scanNumber
	"called whenever we kn ow that the first character of our next token is a digit."
	
	| token |
	
	buffer reset.
	
	token := PPPToken new.
	token position: indexCount.
	
	[characterType = #digit ] whileTrue: [
		buffer nextPut: currentCharacter.
		self step ].
	
	^token
		content: buffer contents;
		tokenType: #number;
		yourself 