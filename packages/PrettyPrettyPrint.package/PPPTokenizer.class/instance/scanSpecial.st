scanning
scanSpecial
	| token |
	
	token := PPPToken new
		position: self indexCount;
		content: self currentCharacter asString;
		tokenType: #special;
		yourself.
	
	self step.
	
	^token