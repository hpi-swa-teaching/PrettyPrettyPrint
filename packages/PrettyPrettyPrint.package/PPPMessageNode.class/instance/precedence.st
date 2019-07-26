precedence
precedence
	
	self isUnaryMessage ifTrue: [ ^ 1 ].
	self isBinaryMessage ifTrue: [ ^ self class precedenceForBinary ].
	self isNamedMessage ifTrue: [ ^ 3 ]