as yet unclassified
scanBinaryOperator 

	| token |
	
	token := PPPToken new.
	token position: indexCount.
	token content: currentCharacter.
	self step.
	
	^token
		tokenType: #binaryOperator;
		yourself