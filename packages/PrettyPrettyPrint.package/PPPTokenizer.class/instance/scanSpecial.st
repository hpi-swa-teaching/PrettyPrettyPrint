as yet unclassified
scanSpecial 

	| token |
	
	token := Token new.
	
	token content: currentCharacter.
	self step.
	^token
		tokenType: #special;
		yourself