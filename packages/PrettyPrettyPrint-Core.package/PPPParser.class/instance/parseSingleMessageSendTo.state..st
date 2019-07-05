parse-message-send
parseSingleMessageSendTo: aNode state: aState
	self nextToken isBinaryOperator ifTrue: [
		^self parseBinaryMessageSendTo: aNode state: aState ].
	
	(self nextToken isIdentifier and: [self nextToken isMessagePart not]) ifTrue: [
		^self parseUnaryMessageSendTo: aNode ].
	
	(aState insideNamedMessage not and: [self nextToken isMessagePart]) ifTrue: [
		^self parseNamedMessageSendTo: aNode state: aState ].
	
	^self syntaxError