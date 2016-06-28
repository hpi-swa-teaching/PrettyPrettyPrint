parse-message-send
parseMessageSendTo: aReceiverNode state: aState
	| receiver |
	receiver := aReceiverNode.
	
	[self nextToken startsMessage and: [self canStartNewMessage: aState]] whileTrue: [
		receiver := self parseSingleMessageSendTo: receiver state: aState ].
	
	(self nextToken isCascade and: [aState insideCascade not]) ifTrue: [
		^self parseCascadeMessageSendStartingWith: receiver state: aState ].	
	
	^receiver