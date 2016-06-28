scanning
scanString
	| token |
	token := PPPToken new
		position: indexCount;
		tokenType: #string;
		yourself.
	
	self step.
	
	[ currentCharacter ~= $' or: [ currentCharacter = $' and: [stream peek = $'] ]] whileTrue: [
		currentCharacter = $' ifTrue: [ self step ].
		buffer nextPut: currentCharacter.
		self step ].
	
	self step.
	
	^token
		content: buffer contents;
		yourself
	