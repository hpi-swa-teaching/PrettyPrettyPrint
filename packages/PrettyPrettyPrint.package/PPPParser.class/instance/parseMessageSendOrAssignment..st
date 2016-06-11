as yet unclassified
parseMessageSendOrAssignment: insideNamedMessage
	| nextNextToken node |
	self nextToken.
	nextNextToken := stream peek.
	
	" assignment "
	(self nextToken tokenType = #identifier and: [nextNextToken tokenType = #assignment]) ifTrue: [
		^self parseAssignment ].
	
	" expression in parentheses "
	self nextToken content = '(' ifTrue: [
		self step: #special.
		node := self parseMessageSendOrAssignment: false.
		node hasParentheses: true.
		(self step: #special) content = ')' ifFalse: [ self syntaxError ].
		^node ].
	
	" message send "
	(self nextToken tokenType = #identifier or:
	[self nextToken tokenType = #number] or:
	[self nextToken tokenType = #string] or:
	[self nextToken content = '[']) ifTrue: [ ^self parseMessageSend: insideNamedMessage ].
	
	^self syntaxError