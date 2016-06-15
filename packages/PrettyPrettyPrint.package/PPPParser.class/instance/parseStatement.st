as yet unclassified
parseStatement
	" parses either an assignment, a return or a message send "
	| statement |
	
	(self nextToken first = #special and: [self nextToken second = '^'])
		ifTrue: [ statement := self parseReturnStatement ]
		ifFalse: [ statement := self parseMessageSendOrAssignment ].
	
	(self nextToken first = #special and: [self nextToken second = '.']) ifTrue: [ self step: #special ].
	
	^statement