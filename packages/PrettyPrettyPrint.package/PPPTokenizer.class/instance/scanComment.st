scanning
scanComment
	
	[ self step ~= $" ]
		whileTrue: [ self buffer nextPut: self currentCharacter ].
	
	self step.
	
	self currentComments
		add: (PPPToken new
			position: self indexCount;
			tokenType: #comment;
			content: '"' , self buffer contents , '"';
			yourself).
	
	^ self nextToken