as yet unclassified
parseNamedMessageSendTo: aReceiverNode state: aState
	| messageSend |
	messageSend := PPPMessageNode new
		arguments: OrderedCollection new;
		receiver: aReceiverNode;
		selector: '';
		yourself.
	
	[self nextToken isMessagePart] whileTrue: [
		messageSend selector: (messageSend selector, (self step: #identifier) content).
		messageSend arguments add: (self parseStatement: (aState copy insideNamedMessage: true; yourself)) ].
	
	^messageSend