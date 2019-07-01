as yet unclassified
precedence

	self isUnaryMessage ifTrue: [^ 1].
	self isBinaryMessage ifTrue: [^ 2].
	self isNamedMessage ifTrue: [^ 3].