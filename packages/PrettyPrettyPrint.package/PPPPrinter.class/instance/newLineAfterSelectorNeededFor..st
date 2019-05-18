visit-node
newLineAfterSelectorNeededFor: aMethodNode

	self profile newlineAfterSelector ifFalse: [^ false].
	(self profile newlineBeforeReturn and: aMethodNode bodySequence statements size = 1) ifFalse: [^ false].
	^ true