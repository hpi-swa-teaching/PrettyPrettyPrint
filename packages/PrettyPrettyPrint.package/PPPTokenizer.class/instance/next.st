as yet unclassified
next
	(currentCharacter = $: and: [stream peek = $=]) ifTrue: [ ^self scanAssignment ].
	currentCharacter = $' ifTrue: [ ^self scanString ].
	characterType = #special ifTrue: [ ^self scanSpecial ].
	characterType = #letter ifTrue: [ ^self scanIdentifier ].
	characterType = #digit ifTrue: [ ^self scanNumber ].
	characterType = #binaryOperator ifTrue: [ ^self scanBinaryOperator ].
	characterType = #separator ifTrue: [ ^self scanSeparator ]
	