visit-node
visitCascadeNode: aCascadeNode

	| length |
	length := self additionalLengthForParentheses: aCascadeNode.
	
	aCascadeNode messages do: [:message | message accept: self].
	aCascadeNode receiver accept: self.
	
	aCascadeNode messages 
		do: [:message | length := length + message length] 
		separatedBy: [length := length + self additionalLengthForSemicolon + self additionalLengthForSpace].
	
	aCascadeNode 
		length: (aCascadeNode receiver length + self additionalLengthForSpace + length);
		messageDepth: (self collectMaximumOn: aCascadeNode messages with: [:message | message depth]);
		receiverDepth: (aCascadeNode receiver depth);
		depth: (aCascadeNode messageDepth max: aCascadeNode receiverDepth + 
			(self additionalDepthForParentheses: aCascadeNode))
	