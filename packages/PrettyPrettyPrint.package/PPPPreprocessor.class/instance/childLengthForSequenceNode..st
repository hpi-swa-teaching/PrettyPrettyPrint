calculate length
childLengthForSequenceNode: aSequenceNode
	
	| childLength |
	
	childLength := 0.
	
	aSequenceNode statements 
		do: [:statement | childLength := childLength + statement length + (self additionalLengthForPeriod)]
		separatedBy: [childLength := childLength + self additionalLengthForSpace].

	^ childLength