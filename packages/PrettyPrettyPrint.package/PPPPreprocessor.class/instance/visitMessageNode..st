visit-node
visitMessageNode: aMessageNode
	
	| length |
	length := self additionalLengthForParentheses: aMessageNode.
	length := length + aMessageNode selector size.
	aMessageNode receiver ifNotNil: [aMessageNode receiver accept: self.
		length := length + 1 + aMessageNode receiver length.
		aMessageNode receiverDepth: aMessageNode receiver depth].
	
	aMessageNode arguments 
		do: [:argument | argument accept: self];
		do: [:argument | length := length + argument length + 1] separatedBy: [length := length + 1].
		
	aMessageNode 
		length: length;
		argumentDepth: (self collectMaximumOn: aMessageNode arguments with: [:argument | argument depth]);
		depth: (aMessageNode argumentDepth max: aMessageNode receiverDepth + 
			(self additionalDepthForParentheses: aMessageNode))
			
		
	
