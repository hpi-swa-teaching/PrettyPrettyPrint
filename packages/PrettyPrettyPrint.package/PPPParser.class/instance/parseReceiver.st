parse-message-receiver
parseReceiver
	self nextToken isLiteral ifTrue: [ ^self parseReceiverLiteral ].
	self nextToken isIdentifier ifTrue: [ ^self parseReceiverVariable ].
	self nextToken isSymbolArrayStart ifTrue: [ ^self parseReceiverSymbolArray ].
	self nextToken isOpeningSquareBrace ifTrue: [ ^self parseReceiverBlock ].
	self nextToken isOpeningCurlyBrace ifTrue: [ ^self parseReceiverArray ].
	self nextToken isOpeningRoundBrace ifTrue: [ ^self parseParenthesesExpression ].
	^self syntaxError