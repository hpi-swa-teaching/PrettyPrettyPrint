visit-node
newLineAfterSelectorNeededFor: aMethodNode

	self profile newlineAfterSelector ifFalse: [^ false].
	(self profile newlineBeforeReturn and: [aMethodNode bodySequence statements first isReturnNode]) ifTrue: [^ false].
	^ true