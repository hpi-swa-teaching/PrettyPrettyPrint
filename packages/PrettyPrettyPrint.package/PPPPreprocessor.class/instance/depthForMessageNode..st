visit-node
depthForMessageNode: aMessageNode

	| depth |
	
	self 
		calculateMessageReceiverDepth: aMessageNode;
		calculateMessageArgumentDepth: aMessageNode.

	depth := aMessageNode receiverDepth max: aMessageNode argumentDepth
		+ (self additionalDepthForParentheses: aMessageNode).
		
	^ depth