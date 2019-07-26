scanning
scanBinaryOperator
	
	[ self buffer nextPut: self currentCharacter ]
		doWhileTrue: [
			(self classifyCharacter: self step) = #binaryOperator ].
	
	^ PPPToken new
		position: self indexCount;
		content: self buffer contents;
		tokenType: #binaryOperator;
		yourself