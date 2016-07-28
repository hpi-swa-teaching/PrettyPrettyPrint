scanning
scanCharacter
	| character |
	character := String with: currentCharacter with: self step.
	self step.
	
	^self flushToken: (PPPToken new
		position: indexCount;
		tokenType: #character;
		content: character;
		yourself)