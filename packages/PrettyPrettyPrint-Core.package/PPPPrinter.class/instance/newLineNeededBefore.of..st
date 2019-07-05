helpers-printing
newLineNeededBefore: aStatement of: aNode

	| keepEmptyLines newlineAfterSelector newlineBeforeReturn |
	keepEmptyLines := self profile keepEmptyLines.
	newlineAfterSelector := self profile newlineAfterSelector.
	newlineBeforeReturn := self profile newlineBeforeReturn.
	
	(aStatement precededByEmptyLine and: keepEmptyLines) ifFalse: [^ false].
	(aStatement == aNode statements first 
		and: [newlineAfterSelector 
			and: [keepEmptyLines]]) ifTrue: [^ false].
	(aStatement == aNode statements last 
		and: [newlineBeforeReturn 
			and: [keepEmptyLines]]) ifTrue: [^ false].
	^ true
	