accessing
nextToken
	self buffer reset.
	
	(self currentCharacter = $: and: [self stream peek = $=]) ifTrue: [ ^self scanAssignment ].
	self currentCharacter = $' ifTrue: [ ^self scanString ].
	self currentCharacter = $" ifTrue: [ ^self scanComment ].
	(self currentCharacter = $# and: [self stream peek = $(]) ifTrue: [ ^self scanSymbolArray ].
	self currentCharacter = $# ifTrue: [ ^self scanSymbol ].
	self currentCharacter = $$ ifTrue: [ ^self scanCharacter ].
	(self currentCharacter = $< and: [self stream peek isLetter]) ifTrue: [ ^self scanPragma ].
	self characterType = #special ifTrue: [ ^self scanSpecial ].
	(self currentCharacter = $: or: [self characterType = #letter]) ifTrue: [ ^self scanIdentifier ].
	self characterType = #digit ifTrue: [ ^self scanNumber ].
	(self currentCharacter = $- and: [(self classifyCharacter: self stream peek) = #digit]) ifTrue: [ ^self scanNumber ].
	self characterType = #binaryOperator ifTrue: [ ^self scanBinaryOperator ].
	self characterType = #separator ifTrue: [ ^self scanSeparator ].
	self characterType = #eof ifTrue: [
		^PPPToken new
			content: '';
			tokenType: #eof;
			yourself ].
	
	^self error: 'Unclassified character encountered: ', self currentCharacter asString