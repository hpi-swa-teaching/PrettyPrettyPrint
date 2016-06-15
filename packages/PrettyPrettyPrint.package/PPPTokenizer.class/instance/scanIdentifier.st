as yet unclassified
scanIdentifier

	"called whenever we know that the first character of our next token is a letter."
	
	| token |
	token := PPPToken new
		position: indexCount;
		tokenType: #identifier;
		yourself.
	
	buffer reset.
	
	[ characterType = #letter or:
	[ characterType = #digit or:
	[ currentCharacter = $: and: [ stream peek ~= $= ]]]] whileTrue: [
		buffer nextPut: currentCharacter.
		self step ].
	
	^token
		content: buffer contents;
		yourself