calculate length
maybeOnlyReceiverLength: aPPPValueNode
	
		aPPPValueNode isMessageNode 
			ifTrue: [^ aPPPValueNode receiver length]
			ifFalse: [^ aPPPValueNode length]
	