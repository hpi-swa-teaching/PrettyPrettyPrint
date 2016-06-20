as yet unclassified
parseParenthesesExpression
	| node |
	self step: #special.
	
	node := self parseStatement: false.
	node hasParentheses: true.
	
	(self step: #special) content = ')' ifFalse: [ self syntaxError ].
	
	^node