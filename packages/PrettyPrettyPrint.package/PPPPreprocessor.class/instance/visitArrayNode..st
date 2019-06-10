visit-node
visitArrayNode: anArrayNode
	
	| length depth |
	length := self additionalLengthForParentheses: anArrayNode.
	anArrayNode constant ifTrue: [length := length + 3] ifFalse: [length := length + 2].
	
	anArrayNode contents do: [:element | element accept: self].
	
	anArrayNode contents do: [:element | length := length + element length] separatedBy: [length := length + 1].
	
	depth := (self collectMaximumOn: anArrayNode contents with: [:element | element depth])
			+ 1 + (self additionalDepthForParentheses: anArrayNode).
			
	anArrayNode 
		depth: depth;
		length: length
		
	
