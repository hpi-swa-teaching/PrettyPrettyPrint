visit-node
visitCascadeNode: aCascadeNode

	| length |
	length := self additionalLengthForParentheses: aCascadeNode.
	
	aCascadeNode messages do: [:message | message accept: self].
	aCascadeNode receiver accept: self.
	
	aCascadeNode messages do: [:message | length := length + message length] separatedBy: [length := length + 2].
	
	aCascadeNode 
		length: (length + aCascadeNode receiver length);
		messageDepth: (self collectMaximumOn: aCascadeNode messages with: [:message | message depth]);
		receiverDepth: (aCascadeNode receiver depth);
		depth: (aCascadeNode messageDepth max: aCascadeNode receiverDepth + 
			(self additionalDepthForParentheses: aCascadeNode))
	