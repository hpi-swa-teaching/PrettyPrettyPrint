scanning
scanBinaryOperator 
	[buffer nextPut: currentCharacter] doWhileTrue: [ (self classifyCharacter: self step) = #binaryOperator ].
	
	^PPPToken new
		position: indexCount;
		content: buffer contents;
		tokenType: #binaryOperator;
		yourself