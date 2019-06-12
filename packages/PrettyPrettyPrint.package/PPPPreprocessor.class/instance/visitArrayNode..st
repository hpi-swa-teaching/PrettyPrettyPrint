visit-node
visitArrayNode: anArrayNode
	
	| length depth |
	length := self additionalLengthForParentheses: anArrayNode.
	length := length + (self additionalLengthForArray: anArrayNode).
	
	anArrayNode contents do: [:element | element accept: self].
	
	anArrayNode contents 
		do: [:element | length := length + element length] 
		separatedBy: [length := length + (self separationBetweenArrayElements: anArrayNode)].
	
	depth := (self collectMaximumOn: anArrayNode contents with: [:element | element depth])
			+ (self additionalArrayDepth)
			+ (self additionalDepthForParentheses: anArrayNode).
			
	anArrayNode 
		depth: depth;
		length: length
		
	
