set needsParantheses
setParanthesesForArgument: aValueNode ofMessage: aMessageNode
		
	aValueNode precedence >= aMessageNode precedence ifTrue: [
		aValueNode needsParantheses: true]