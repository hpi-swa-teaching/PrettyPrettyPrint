as yet unclassified
parseMessageSendTo: aReceiverNode insideNamedMessage: aBoolean
	self nextToken tokenType = #binaryOperator ifTrue: [
		^self parseBinaryMessageSendTo: aReceiverNode ].
	
	(self nextToken tokenType = #identifier and: [self nextToken content endsWithAColon not]) ifTrue: [
		^self parseUnaryMessageSendTo: aReceiverNode ].
	
	(aBoolean not and: [self nextToken tokenType = #identifier and: [self nextToken content endsWithAColon]]) ifTrue: [
		^self parseNamedMessageSendTo: aReceiverNode ].
	
	^aReceiverNode