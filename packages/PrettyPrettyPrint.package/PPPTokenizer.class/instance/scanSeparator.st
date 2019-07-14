scanning
scanSeparator
	currentWhitespaces add: (PPPToken new
		position: indexCount;
		content: currentCharacter asString;
		tokenType: #separator;
		yourself).
		
	self step.
	
	^self nextToken