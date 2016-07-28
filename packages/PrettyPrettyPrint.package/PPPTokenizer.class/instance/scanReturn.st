scanning
scanReturn

	| token |
	

	token := PPPToken new.
	token position: indexCount.
	
	buffer nextPut: $^.
	self step.
	
	[ characterType =  #letter ] whileTrue: [
		buffer nextPut: currentCharacter.
		self step ].
	
	^self flushToken: (token 
		content: buffer contents;
		tokenType: #return;
		yourself)