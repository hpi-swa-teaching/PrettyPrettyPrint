as yet unclassified
step: aType
	" runs step and verifies that the type of the returned token equals the given type "
	| token |
	token := self step.
	token first ~= aType ifTrue: [ self syntaxError ].
	^token