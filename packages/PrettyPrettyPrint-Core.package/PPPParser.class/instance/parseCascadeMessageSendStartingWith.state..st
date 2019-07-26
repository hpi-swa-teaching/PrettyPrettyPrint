parse-message-send
parseCascadeMessageSendStartingWith: aMessageNode state: aState
	
	| cascade |
	
	cascade := PPPCascadeNode new.
	cascade receiver: aMessageNode receiver.
	cascade
		addMessage: (aMessageNode
			receiver: nil;
			yourself).
	
	[ self nextToken isCascade ]
		whileTrue: [
			self step.
			cascade
				addMessage: (self
					parseSingleMessageSendTo: nil
					state: (aState copy
						insideCascade: true;
						insideNamedMessage: false;
						yourself)) ].
	
	^ cascade