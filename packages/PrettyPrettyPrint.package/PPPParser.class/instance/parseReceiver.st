as yet unclassified
parseReceiver
	(#(number string symbol character) includes: self nextToken tokenType)
		ifTrue: [ ^self parseReceiverLiteral ].
	
	(self nextToken tokenType = #identifier)
		ifTrue: [ ^self parseReceiverVariable ].
	
	self nextToken tokenType = #symbolArrayStart
		ifTrue: [ ^self parseReceiverSymbolArray ].
	
	self nextToken content = '(' ifTrue: [ ^self parseParenthesesExpression ].
	
	(self nextToken tokenType = #special and: [self nextToken content = '['])
		ifTrue: [ ^self parseReceiverBlock ].
	
	(self nextToken tokenType = #special and: [self nextToken content = '{'])
		ifTrue: [ ^self parseReceiverArray ].
	
	^self syntaxError