helpers-indent
newLineAfterSelectorNeededFor: aMethodNode
	
	| hasNoStatements |
	
	hasNoStatements := aMethodNode bodySequence statements isEmpty.
	hasNoStatements ifTrue: [ ^ false ].
	
	self profile newlineAfterSelector ifFalse: [ ^ false ].
	
	^ (self profile newlineBeforeReturn
		and: [ aMethodNode bodySequence statements first isReturnNode ]) not