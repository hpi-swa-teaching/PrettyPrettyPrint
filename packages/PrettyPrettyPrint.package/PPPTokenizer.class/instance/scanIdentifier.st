scanning
scanIdentifier
	| token |
	
	token := PPPToken new
		position: self indexCount;
		tokenType: #identifier;
		yourself.
	
	[self characterType = #letter or:
		[self characterType = #digit or:
			[self currentCharacter = $: and: [self stream peek ~= $=]]]] whileTrue: [
				self buffer nextPut: self currentCharacter.
				self step ].
	
	^token
		content: self buffer contents;
		yourself