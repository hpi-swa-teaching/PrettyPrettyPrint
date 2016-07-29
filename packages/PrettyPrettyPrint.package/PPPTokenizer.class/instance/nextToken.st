accessing
nextToken
	buffer reset.
	
	(currentCharacter = $: and: [stream peek = $=]) ifTrue: [ ^self scanAssignment ].
	currentCharacter = $' ifTrue: [ ^self scanString ].
	currentCharacter = $" ifTrue: [ ^self scanComment ].
	(currentCharacter = $# and: [stream peek = $(]) ifTrue: [ ^self scanSymbolArray ].
	currentCharacter = $# ifTrue: [ ^self scanSymbol ].
	currentCharacter = $$ ifTrue: [ ^self scanCharacter ].
	characterType = #special ifTrue: [ ^self scanSpecial ].
	(currentCharacter = $: or: [characterType = #letter]) ifTrue: [ ^self scanIdentifier ].
	characterType = #digit ifTrue: [ ^self scanNumber ].
	(currentCharacter = $- and: [(self classifyCharacter: stream peek) = #digit]) ifTrue: [ ^self scanNumber ].
	characterType = #binaryOperator ifTrue: [ ^self scanBinaryOperator ].
	characterType = #separator ifTrue: [ ^self scanSeparator ].
	characterType = #eof ifTrue: [
		^PPPToken new
			tokenType: #eof;
			yourself ].
	
	^self error: 'Unclassified character encountered: ', currentCharacter asString