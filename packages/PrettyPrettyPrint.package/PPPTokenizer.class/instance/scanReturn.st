as yet unclassified
scanReturn

	| token |
	

	token := PPPToken new.
	token position: indexCount.
	
	buffer reset.	
	buffer nextPut: $^.
	self step.
	
	[ characterType =  #letter ] whileTrue: [
		buffer nextPut: currentCharacter.
		self step ].
	
	^token 
		content: buffer contents;
		tokenType: #return;
		yourself