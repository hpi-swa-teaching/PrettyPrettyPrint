calculate depth
depthForCascadeNode: aCascadeNode
	
	| depth |
	
	self
		calculateMessageDepth: aCascadeNode; 
		calculateReceiverDepth: aCascadeNode.
	
	depth := aCascadeNode messageDepth max: aCascadeNode receiverDepth 
		+ (self additionalDepthForParentheses: aCascadeNode).
			
	^ depth
	