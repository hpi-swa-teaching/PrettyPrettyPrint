calculate depth
depthForMessageNode: aMessageNode

	| depth |
	
	self 
		calculateReceiverDepth: aMessageNode;
		calculateArgumentDepth: aMessageNode.

	depth := aMessageNode receiverDepth max: aMessageNode argumentDepth
		+ (self additionalDepthForParentheses: aMessageNode).
		
	^ depth