as yet unclassified
parseStatement: insideNamedMessage
	" parses either an assignment, a return or a message send "
	| statement |
	
	(self nextToken tokenType = #special and: [self nextToken content = '^'])
		ifTrue: [ statement := self parseReturnStatement ]
		ifFalse: [ statement := self parseMessageSendOrAssignment: insideNamedMessage ].
	
	((self nextToken tokenType = #special) and: [(self nextToken content = '.')]) ifTrue: [ self step: #special ].
	
	^statement