parse-node
parseParenthesesExpression
	| node |
	self step.
	
	node := self parseStatement: PPPParserState new.
	node hasParentheses: true.
	
	(self step: #special) content = ')' ifFalse: [ self syntaxError ].
	
	^node