calculate length
maybeOnlyReceiverLength: aPPPValueNode
	
	(aPPPValueNode isMessageNode and: [ aPPPValueNode isBinaryMessage ])
		ifTrue: [ ^ aPPPValueNode receiver length ]
		ifFalse: [ ^ aPPPValueNode length ]