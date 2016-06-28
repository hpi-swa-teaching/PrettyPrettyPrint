parse-node
parseStatement: aState
	| receiver |
	self nextNextToken isAssignment ifTrue: [ ^self parseAssignment ].
	
	receiver := self parseReceiver.
	
	self nextToken startsMessage
		ifTrue: [ ^self parseMessageSendTo: receiver state: aState ]
		ifFalse: [ ^receiver ]