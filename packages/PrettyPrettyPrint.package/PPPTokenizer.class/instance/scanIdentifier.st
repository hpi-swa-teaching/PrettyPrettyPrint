as yet unclassified
scanIdentifier

	"called whenever we know that the first character of our next token is a letter."
	
	| token |
	token := PPPToken new
		position: indexCount;
		tokenType: #identifier;
		yourself.
	
	currentCharacter = $# ifTrue: [
		token tokenType: #symbol.
		buffer nextPut: currentCharacter.
		
		self step = $' ifTrue: [
			buffer nextPut: $'.
			^token
				content: self scanString content, $';
				yourself ]].
	
	[characterType = #letter or:
	[characterType = #digit or:
	[currentCharacter = $: and: [stream peek ~= $=]]]] whileTrue: [
		buffer nextPut: currentCharacter.
		self step ].
	
	^token
		content: buffer contents;
		yourself