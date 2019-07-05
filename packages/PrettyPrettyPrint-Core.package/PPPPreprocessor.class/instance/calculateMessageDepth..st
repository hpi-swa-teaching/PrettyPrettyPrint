calculate depth
calculateMessageDepth: aCascadeNode
	
	aCascadeNode 
		messageDepth: (self 
			collectMaximumOn: aCascadeNode messages 
			with: [:message | message depth])