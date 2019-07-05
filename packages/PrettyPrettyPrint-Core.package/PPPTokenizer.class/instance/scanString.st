scanning
scanString
	| token |
	
	token := PPPToken new
		position: indexCount;
		tokenType: #string;
		yourself.
	
	self step.
	
	[ currentCharacter ~= $' or: [ currentCharacter = $' and: [stream peek = $'] ]] whileTrue: [
		buffer nextPut: currentCharacter.
		currentCharacter = $' ifTrue: [ buffer nextPut: $'. self step ].
		self step ].
	
	self step.
	
	^token
		content: '''', buffer contents, '''';
		yourself