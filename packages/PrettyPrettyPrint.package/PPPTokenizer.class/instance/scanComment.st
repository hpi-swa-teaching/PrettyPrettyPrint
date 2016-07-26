scanning
scanComment
	self step.
	
	[ self step ~= $" ] whileTrue: [ buffer nextPut: currentCharacter ].
	
	self step.
	
	^PPPToken new
		position: indexCount;
		tokenType: #comment;
		content: buffer contents;
		yourself