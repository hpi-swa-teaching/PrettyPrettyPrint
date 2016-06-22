as yet unclassified
parseMessageSendOrAssignment: insideNamedMessage
	| node |
	
	" assignment "
	(self nextToken tokenType = #identifier and: [self nextNextToken tokenType = #assignment]) ifTrue: [
		^self parseAssignment ].
	
	" expression in parentheses "
	self nextToken content = '(' ifTrue: [
		self step: #special.
		node := self parseMessageSendOrAssignment: false.
		node hasParentheses: true.
		(self step: #special) content = ')' ifFalse: [ self syntaxError ].
		^node ].
	
	" expression in block "
	self nextToken content = '[' ifTrue: [
		node := self parseMessageSend: insideNamedMessage.
		self nextToken content = '.' ifTrue: [ self step: #special ].
		(self step: #special) content = ']' ifFalse: [ self syntaxError ].
		^node ].
	
	" message send "
	(self nextToken tokenType = #identifier or:
	[self nextToken tokenType = #number] or:
	[self nextToken tokenType = #string]) ifTrue: [ ^self parseMessageSend: insideNamedMessage ].
	
	^self syntaxError