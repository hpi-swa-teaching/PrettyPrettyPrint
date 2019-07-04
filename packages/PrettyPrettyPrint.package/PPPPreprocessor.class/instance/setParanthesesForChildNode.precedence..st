parantheses
setParanthesesForChildNode: aValueNode precedence: aSmallInteger

	| selectorPrecedence childPrecedence |
	
	aValueNode ifNotNil: [
		selectorPrecedence := aSmallInteger.
		childPrecedence := aValueNode precedence.
		childPrecedence >= selectorPrecedence ifTrue: [aValueNode needsParantheses: true]]
	
