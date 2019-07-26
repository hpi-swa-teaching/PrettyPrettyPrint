visit-node
visitSequenceNode: aSequenceNode
	
	aSequenceNode statements do: [ :statement |
		statement accept: self ].
	aSequenceNode
		length: (self lengthForSequenceNode: aSequenceNode);
		childLength: (self childLengthForSequenceNode: aSequenceNode);
		needsStructuralLinebreak: (self
			structuralLinebreakForSequenceNode: aSequenceNode)