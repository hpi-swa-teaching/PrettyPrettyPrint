scanning
scanSeparator
	self currentWhitespaces add: (PPPToken new
		position: self indexCount;
		content: self currentCharacter asString;
		tokenType: #separator;
		yourself).
		
	self step.
	
	^self nextToken