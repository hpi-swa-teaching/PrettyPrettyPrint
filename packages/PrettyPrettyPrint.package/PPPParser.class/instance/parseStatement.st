as yet unclassified
parseStatement
	" parses either an assignment, a return or a message send "
	
	(self currentToken first = #special and: [self currentToken second = '^']) ifTrue: [
		^self parseReturnStatement ].
	
	(self currentToken first = #identifier and: [self nextToken second first = #assignment]) ifTrue: [
		^self parseAssignment ].
	
	self parseMessageSend