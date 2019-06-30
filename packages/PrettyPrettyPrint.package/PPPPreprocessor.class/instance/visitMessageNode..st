visit-node
visitMessageNode: aMessageNode

	aMessageNode receiver ifNotNil: [aMessageNode receiver accept: self.
		aMessageNode receiverDepth: aMessageNode receiver depth].
	
	aMessageNode arguments 
		do: [:argument | argument accept: self].
		
	aMessageNode 
		length: (self lengthForMessageNode: aMessageNode);
		argumentDepth: (self 
			collectMaximumOn: aMessageNode arguments 
			with: [:argument | argument depth]);
		depth: (aMessageNode argumentDepth max: aMessageNode receiverDepth 
			+ (self additionalDepthForParentheses: aMessageNode))
			
		
	
