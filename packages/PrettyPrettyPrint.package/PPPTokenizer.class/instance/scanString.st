scanning
scanString
	| token |
	
	token := PPPToken new
		position: self indexCount;
		tokenType: #string;
		yourself.
	
	self step.
	
	[ self currentCharacter ~= $' or: [ self currentCharacter = $' and: [self stream peek = $'] ]] whileTrue: [
		self buffer nextPut: self currentCharacter.
		self currentCharacter = $' ifTrue: [ self buffer nextPut: $'. self step ].
		self step ].
	
	self step.
	
	^token
		content: '''', self buffer contents, '''';
		yourself