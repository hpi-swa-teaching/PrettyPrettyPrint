as yet unclassified
parseBinaryMessageSendTo: aReceiverNode
	^PPPMessageNode new
		receiver: aReceiverNode;
		selector: (self step: #binaryOperator) content;
		arguments: (OrderedCollection with: (self parseStatement: false))