scanning
scanCharacter
	
	| character |
	
	character := String with: self currentCharacter with: self step.
	self step.
	
	^ PPPToken new
		position: self indexCount;
		tokenType: #character;
		content: character;
		yourself