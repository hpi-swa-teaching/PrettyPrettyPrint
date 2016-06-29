parse-message-send
parseMessageSendState: aState
	| receiver |
	receiver := self parseReceiver.
	
	(self canStartNewMessage: aState) ifFalse: [ ^receiver ].
	
	[self canStartNewMessage: aState] whileTrue: [
		receiver := self parseSingleMessageSendTo: receiver state: aState ].
	
	(self nextToken isCascade and: [aState insideCascade not])
		ifTrue: [ ^self parseCascadeMessageSendStartingWith: receiver state: aState ]
		ifFalse: [ ^receiver ]