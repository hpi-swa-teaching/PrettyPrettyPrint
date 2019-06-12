visit-node
additionalLengthForArray: aPPPArrayNode

	aPPPArrayNode constant
		ifTrue: [^ 3]
		ifFalse: [^ 2]
