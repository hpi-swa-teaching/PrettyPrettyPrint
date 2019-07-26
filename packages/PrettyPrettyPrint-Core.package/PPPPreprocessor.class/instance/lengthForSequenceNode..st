calculate length
lengthForSequenceNode: aSequenceNode
	
	| length |
	
	aSequenceNode temporaries
		ifEmpty: [ length := 0 ]
		ifNotEmpty: [ length := self additionalLengthForTemporaries ].
	
	aSequenceNode temporaries
		do: [ :temp | length := length + temp size ]
		separatedBy: [ length := length + self additionalLengthForSpace ].
	
	^ length