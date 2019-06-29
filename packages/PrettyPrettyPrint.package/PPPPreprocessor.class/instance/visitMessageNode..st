visit-node
visitMessageNode: aMessageNode
	
	| length |
	length := self additionalLengthForParentheses: aMessageNode.
	length := length + aMessageNode selector size.
	aMessageNode receiver ifNotNil: [aMessageNode receiver accept: self.
		length := length + self additionalLengthForSpace + aMessageNode receiver length.
		aMessageNode receiverDepth: aMessageNode receiver depth].
	
	aMessageNode arguments 
		do: [:argument | argument accept: self];
		do: [:argument | length := length + self additionalLengthForSpace + argument length] 
		separatedBy: [length := length + self additionalLengthForSpace].
		
	aMessageNode 
		length: length;
		argumentDepth: (self 
			collectMaximumOn: aMessageNode arguments 
			with: [:argument | argument depth]);
		depth: (aMessageNode argumentDepth max: aMessageNode receiverDepth 
			+ (self additionalDepthForParentheses: aMessageNode)).
			
	aMessageNode 
		needsStructuralLinebreak: ((aMessageNode arguments 
			anySatisfy: [:arg | arg needsStructuralLinebreak]) 
				or: [aMessageNode receiver needsStructuralLinebreak])
	
