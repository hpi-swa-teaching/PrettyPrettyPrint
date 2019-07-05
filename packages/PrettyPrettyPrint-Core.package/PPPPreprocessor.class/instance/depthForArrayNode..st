calculate depth
depthForArrayNode: anArrayNode
	
	| depth |
	
	depth := (self collectMaximumOn: anArrayNode contents with: [:element | element depth])
		+ (self additionalArrayDepth)
		+ (self additionalDepthForParentheses: anArrayNode).
			
	^ depth