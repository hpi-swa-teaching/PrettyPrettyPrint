visit-node
setParanthesesForChildNode: aValueNode precedence: aSmallInteger

	| selectorPrecedence childPrecedence |
	
	selectorPrecedence := aSmallInteger.
	childPrecedence := aValueNode precedence.
	childPrecedence >= selectorPrecedence ifTrue: [aValueNode needsParantheses: true].
		
	
