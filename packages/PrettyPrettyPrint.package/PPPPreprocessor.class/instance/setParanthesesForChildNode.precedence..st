parantheses
setParanthesesForChildNode: aValueNode precedence: aSmallInteger "precedence of the surrounding operator"
	
	aValueNode ifNotNil: [
		aValueNode precedence >= aSmallInteger ifTrue: [
			aValueNode needsParantheses: true]]
	
