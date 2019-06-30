calculate depth
depthForArrayNode: anArrayNode.
	
	^ (self collectMaximumOn: anArrayNode contents with: [:element | element depth])
		+ (self additionalArrayDepth)
		+ (self additionalDepthForParentheses: anArrayNode).