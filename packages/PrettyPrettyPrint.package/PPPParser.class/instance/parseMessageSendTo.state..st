as yet unclassified
parseMessageSendTo: aReceiverNode state: aState
	| receiver cascade |
	receiver := aReceiverNode.
	
	[self nextToken startsMessage and: [self nextToken isMessagePart not or: [aState insideNamedMessage not]]] whileTrue: [
		receiver := self parseSimpleMessageTo: receiver state: aState ].
	
	(receiver class = PPPMessageNode and: [self nextToken isCascade and: [aState insideCascade not]]) ifTrue: [
		cascade := PPPCascadeNode new.
		cascade receiver: receiver receiver.
		cascade messages add: (receiver receiver: nil; yourself).
		
		[self nextToken isCascade] whileTrue: [
			self step.
			cascade messages add: (self
				parseSimpleMessageTo: nil
				state: (aState copy insideCascade: true; yourself)) ].
		^cascade ].	
	
	^receiver