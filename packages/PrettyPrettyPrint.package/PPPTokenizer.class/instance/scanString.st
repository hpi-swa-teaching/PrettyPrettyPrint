as yet unclassified
scanString
	| token |
	token := PPPToken new
		position: indexCount;
		tokenType: #string;
		yourself.
	
	buffer reset.
	
	self step.
	
	[ currentCharacter ~= $' or: [ currentCharacter = $' and: [stream peek = $'] ]] whileTrue: [
	"[ currentCharacter = $' and: [ self step ~= $' ]] whileFalse: ["
		currentCharacter = $' ifTrue: [ self step ].
		buffer nextPut: currentCharacter.
		self step ].
	
	self step.
	
	^token
		content: buffer contents;
		yourself
	