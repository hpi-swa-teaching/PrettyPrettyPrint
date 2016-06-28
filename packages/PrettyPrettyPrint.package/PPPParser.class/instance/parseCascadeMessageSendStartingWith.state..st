parse-message-send
parseCascadeMessageSendStartingWith: aMessageNode state: aState
	| cascade |
	cascade := PPPCascadeNode new.
	cascade receiver: aMessageNode receiver.
	cascade messages add: (aMessageNode receiver: nil; yourself).
	
	[self nextToken isCascade] whileTrue: [
		self step.
		cascade messages add: (self
			parseSingleMessageSendTo: nil
			state: (aState copy insideCascade: true; yourself)) ].
	
	^cascade