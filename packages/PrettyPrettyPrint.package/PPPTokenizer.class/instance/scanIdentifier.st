scanning
scanIdentifier
	| token |
	token := PPPToken new
		position: indexCount;
		tokenType: #identifier;
		yourself.
	
	[characterType = #letter or:
	[characterType = #digit or:
	[currentCharacter = $: and: [stream peek ~= $=]]]] whileTrue: [
		buffer nextPut: currentCharacter.
		self step ].
	
	^token
		content: buffer contents;
		yourself