as yet unclassified
parseMessageSendOrAssignment: insideNamedMessage
	| node |
	
	" assignment "
	(self nextToken isIdentifier and: [self nextNextToken isAssignment]) ifTrue: [
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
	(self nextToken isIdentifier or:
	[self nextToken isNumber] or:
	[self nextToken isString]) ifTrue: [ ^self parseMessageSend: insideNamedMessage ].
	
	^self syntaxError