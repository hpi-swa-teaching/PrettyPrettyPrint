parse-message-send
parseNamedMessageSendTo: aReceiverNode state: aState
	| messageSend |
	messageSend := PPPMessageNode new
		arguments: OrderedCollection new;
		receiver: aReceiverNode;
		selector: '';
		yourself.
	
	[self nextToken isMessagePart] whileTrue: [
		messageSend selector: (messageSend selector, (self step: #identifier) content).
		messageSend addArgument: (self parseStatement: (aState copy insideNamedMessage: true; yourself)) ].
	
	^messageSend