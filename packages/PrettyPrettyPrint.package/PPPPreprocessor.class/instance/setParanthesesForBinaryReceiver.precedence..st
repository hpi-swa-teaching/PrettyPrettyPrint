parantheses
setParanthesesForBinaryReceiver: aValueNode precedence: aSmallInteger

	aValueNode ifNotNil: [
		aValueNode precedence > aSmallInteger
			ifTrue: [aValueNode needsParantheses: true]]
