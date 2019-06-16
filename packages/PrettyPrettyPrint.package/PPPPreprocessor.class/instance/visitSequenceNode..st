visit-node
visitSequenceNode: aSequenceNode
	
	| length depth childLength |
	aSequenceNode temporaries 
		ifEmpty: [length := 0]
		ifNotEmpty: [length := self additionalLengthForTemporaries].
	depth := 0.
	childLength := 0.
	aSequenceNode temporaries 
		do: [:temp | length := length + temp size] 
		separatedBy: [length := length + self additionalLengthForSpace].
	
	aSequenceNode statements 
		do: [:statement | statement accept: self];
		do: [:statement | childLength := childLength + statement length + (self additionalLengthForPeriod)]
		separatedBy: [childLength := childLength + self additionalLengthForSpace].
	depth := self 
		collectMaximumOn: aSequenceNode statements 
		with: [:statement | statement depth].
	
	aSequenceNode 
		depth: depth;
		childLength: childLength;
		length: length
	