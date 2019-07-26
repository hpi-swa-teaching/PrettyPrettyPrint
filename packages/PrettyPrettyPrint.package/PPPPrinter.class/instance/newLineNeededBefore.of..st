helpers-printing
newLineNeededBefore: aStatement of: aNode

	(aStatement precededByEmptyLine and: [self profile keepEmptyLines]) ifFalse: [^ false].
	
	(aStatement == aNode statements first 
		and: [self profile newlineAfterSelector 
			and: [self profile keepEmptyLines]]) ifTrue: [^ false].
		
	^(aStatement == aNode statements last 
		and: [self profile newlineBeforeReturn 
			and: [self profile keepEmptyLines]]) not