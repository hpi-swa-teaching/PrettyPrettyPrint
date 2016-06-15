as yet unclassified
next
	nextObject ifNotNil: [ | token |
		token := nextObject.
		nextObject := nil.
		^token ].
	
	(currentCharacter = $: and: [stream peek = $=]) ifTrue: [ ^self scanAssignment ].
	currentCharacter = $' ifTrue: [ ^self scanString ].
	characterType = #special ifTrue: [ ^self scanSpecial ].
	(currentCharacter = $: or: [characterType = #letter]) ifTrue: [ ^self scanIdentifier ].
	characterType = #digit ifTrue: [ ^self scanNumber ].
	characterType = #binaryOperator ifTrue: [ ^self scanBinaryOperator ].
	characterType = #separator ifTrue: [ ^self scanSeparator ].
	characterType = #eof ifTrue: [
		^PPPToken new
			tokenType: #eof;
			yourself ].
	
	^self syntaxError