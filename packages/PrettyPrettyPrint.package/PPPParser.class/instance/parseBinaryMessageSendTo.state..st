as yet unclassified
parseBinaryMessageSendTo: aReceiverNode state: aState
	^PPPMessageNode new
		receiver: aReceiverNode;
		selector: (self step: #binaryOperator) content;
		arguments: (OrderedCollection with: (self parseStatement: aState))