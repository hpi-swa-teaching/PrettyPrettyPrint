as yet unclassified
parseMessageSendTo: aReceiverNode insideNamedMessage: aBoolean
	self nextToken isBinaryOperator ifTrue: [
		^self parseBinaryMessageSendTo: aReceiverNode ].
	
	(self nextToken isIdentifier and: [self nextToken isMessagePart not]) ifTrue: [
		^self parseUnaryMessageSendTo: aReceiverNode ].
	
	(aBoolean not and: [self nextToken isMessagePart]) ifTrue: [
		^self parseNamedMessageSendTo: aReceiverNode ].
	
	^aReceiverNode