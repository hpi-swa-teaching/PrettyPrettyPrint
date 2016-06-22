as yet unclassified
parseNamedMessageSendTo: aReceiverNode
	| messageSend |
	messageSend := PPPMessageNode new
		arguments: OrderedCollection new;
		receiver: aReceiverNode;
		selector: '';
		yourself.
	
	[self nextToken isMessagePart] whileTrue: [
		messageSend selector: (messageSend selector, (self step: #identifier) content).
		messageSend arguments add: (self parseStatement: true) ].
	
	^messageSend