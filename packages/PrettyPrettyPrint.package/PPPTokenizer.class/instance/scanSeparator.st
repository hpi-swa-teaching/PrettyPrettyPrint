scanning
scanSeparator
	| token |
	
	self skipWhitespace ifTrue: [
		self step.
		^self next ].
	
	token := PPPToken new
		position: indexCount;
		content: currentCharacter asString;
		tokenType: #separator;
		yourself.
		
	self step.
	
	^token