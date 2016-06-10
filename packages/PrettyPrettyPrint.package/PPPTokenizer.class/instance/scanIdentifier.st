as yet unclassified
scanIdentifier

	"called whenever we know that the first character of our next token is a letter."
	
	buffer reset.
	
	[ characterType = #letter ] whileTrue: [ "TODO: implement identifying ':' character."
		buffer nextPut: currentCharacter.
		self step ].
	
	^PPPToken new
		position: indexCount;
		content: buffer contents;
		tokenType: #identifier;
		yourself