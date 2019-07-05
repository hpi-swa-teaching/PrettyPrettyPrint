calculate depth
calculateReceiverDepth: aCascadeOrMessageNode

	aCascadeOrMessageNode receiver ifNotNil: [ 
		aCascadeOrMessageNode receiverDepth: aCascadeOrMessageNode receiver depth ]