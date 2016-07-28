scanning
scanComment
	[ self step ~= $" ] whileTrue: [ buffer nextPut: currentCharacter ].
	
	self step.
	
	currentComments add: (PPPToken new
		position: indexCount;
		tokenType: #comment;
		content: '"', buffer contents, '"';
		yourself).
		
	^self next