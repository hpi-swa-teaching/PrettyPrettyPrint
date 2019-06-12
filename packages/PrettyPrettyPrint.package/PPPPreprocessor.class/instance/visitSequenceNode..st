visit-node
visitSequenceNode: aSequenceNode
	
	| length maxChildDepth childLength |
	aSequenceNode temporaries 
		ifEmpty: [length := 0]
		ifNotEmpty: [length := self additionalLengthForTemporaries].
	maxChildDepth := 0.
	childLength := 0.
	aSequenceNode temporaries 
		do: [:temp | length := length + temp size] 
		separatedBy: [length := length + self additionalLengthForSpace].
	
	aSequenceNode statements 
		do: [:statement | statement accept: self];
		do: [:statement | childLength := childLength + statement length + (self additionalLengthForPeriod)]
		separatedBy: [childLength := childLength + self additionalLengthForSpace].
	maxChildDepth := self 
		collectMaximumOn: aSequenceNode statements 
		with: [:statement | statement depth].
	
	aSequenceNode 
		maxChildDepth: maxChildDepth;
		childLength: childLength;
		length: length
	