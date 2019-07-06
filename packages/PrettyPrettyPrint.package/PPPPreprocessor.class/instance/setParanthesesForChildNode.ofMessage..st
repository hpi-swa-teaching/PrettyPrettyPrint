parantheses
setParanthesesForChildNode: aValueNode ofMessage: aMessageNode "precedence of the surrounding operator"
	
	| surroundingPrecedence innerPrecedence setParantheses |
	
	surroundingPrecedence := aMessageNode precedence.
	innerPrecedence := aValueNode precedence.
	setParantheses := [aValueNode needsParantheses: true].
	
	aValueNode ifNotNil: [
		aMessageNode isBinaryMessage 
			ifTrue: [surroundingPrecedence > innerPrecedence ifTrue: setParantheses]
			ifFalse: [surroundingPrecedence >= innerPrecedence ifTrue: setParantheses]]