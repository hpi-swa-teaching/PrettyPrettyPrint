visit-node
visitSequenceNode: aSequenceNode
	
	| length maxChildDepth childLength |
	length := 4.
	maxChildDepth := 0.
	childLength := 0.
	aSequenceNode temporaries do: [:temp | length := length + temp size] separatedBy: [length := length + 1].
	
	aSequenceNode statements 
		do: [:statement | statement accept: self];
		do: [:statement | childLength := childLength + statement length].
	maxChildDepth := self collectMaximumOn: aSequenceNode statements with: [:statement | statement depth].
	
	aSequenceNode 
		maxChildDepth: maxChildDepth;
		childLength: childLength;
		length: length
	