as yet unclassified
parseStatement: insideNamedMessage
	(self nextToken tokenType = #identifier and:
	[self nextNextToken tokenType = #assignment]) ifTrue: [ ^self parseAssignment ].
	
	self nextToken content = '(' ifTrue: [ ^self parseParenthesesExpression ].
	self nextToken content = '[' ifTrue: [ ^self parseBlockExpression: insideNamedMessage ].
	self nextToken content = '{' ifTrue: [ ^self parseArrayExpression: insideNamedMessage ].
	
	(#(identifier number string symbol symbolArrayStart character) includes:
		self nextToken tokenType) ifTrue: [ ^self parseMessageSend: insideNamedMessage ].
	
	^self syntaxError