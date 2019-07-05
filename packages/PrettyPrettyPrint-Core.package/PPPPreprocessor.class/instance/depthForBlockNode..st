calculate depth
depthForBlockNode: aBlockNode
	
	^ aBlockNode bodySequence depth 
		+ (self additionalBlockDepth) 
		+ (self additionalDepthForParentheses: aBlockNode)
	
	
	