as yet unclassified
parseSimpleMessageTo: aReceiverNode state: aState
	self nextToken isBinaryOperator ifTrue: [
		^self parseBinaryMessageSendTo: aReceiverNode state: aState ].
	
	(self nextToken isIdentifier and: [self nextToken isMessagePart not]) ifTrue: [
		^self parseUnaryMessageSendTo: aReceiverNode ].
	
	(aState insideNamedMessage not and: [self nextToken isMessagePart]) ifTrue: [
		^self parseNamedMessageSendTo: aReceiverNode state: aState ].
	
	^aReceiverNode