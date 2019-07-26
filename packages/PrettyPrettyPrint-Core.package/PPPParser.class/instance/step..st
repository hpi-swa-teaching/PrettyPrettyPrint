initialize
step: aType
	
	| token |
	
	
	" runs step and verifies that the type of the returned token equals the given type "
	token := self step.
	token tokenType ~= aType ifTrue: [ self syntaxError ].
	
	^ token