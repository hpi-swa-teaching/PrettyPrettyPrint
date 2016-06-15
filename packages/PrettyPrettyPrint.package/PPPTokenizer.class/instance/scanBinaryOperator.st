as yet unclassified
scanBinaryOperator 

	| token |
	
	token := PPPToken new
		position: indexCount;
		content: currentCharacter;
		tokenType: #binaryOperator;
		yourself.
		
	self step.
	
	^token