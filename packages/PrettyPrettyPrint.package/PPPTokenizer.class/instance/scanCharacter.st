as yet unclassified
scanCharacter
	| character |
	character := String with: currentCharacter with: self step.
	self step.
	
	^PPPToken new
		position: indexCount;
		tokenType: #character;
		content: character;
		yourself