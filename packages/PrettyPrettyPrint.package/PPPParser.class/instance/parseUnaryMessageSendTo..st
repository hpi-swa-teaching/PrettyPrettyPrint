as yet unclassified
parseUnaryMessageSendTo: aReceiverNode
	^PPPMessageNode new
		receiver: aReceiverNode;
		selector: (self step: #identifier) content