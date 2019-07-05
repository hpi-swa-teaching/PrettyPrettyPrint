scanning
scanSpecial
	| token |
	
	token := PPPToken new
		position: indexCount;
		content: currentCharacter asString;
		tokenType: #special;
		yourself.
	
	self step.
	
	^token