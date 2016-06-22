as yet unclassified
parseStatement: insideNamedMessage
	(self nextToken tokenType = #identifier and:
	[self nextNextToken tokenType = #assignment]) ifTrue: [ ^self parseAssignment ].
	
	self nextToken content = '(' ifTrue: [ ^self parseParenthesesExpression ].
	self nextToken content = '[' ifTrue: [ ^self parseBlockExpression: insideNamedMessage ].
	
	(self nextToken tokenType = #identifier or:
	[self nextToken tokenType = #number] or:
	[self nextToken tokenType = #string] or:
	[self nextToken tokenType = #symbol] or:
	[self nextToken tokenType = #symbolArrayStart]) ifTrue: [ ^self parseMessageSend: insideNamedMessage ].
	
	^self syntaxError