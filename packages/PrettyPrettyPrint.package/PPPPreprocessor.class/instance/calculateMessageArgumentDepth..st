visit-node
calculateMessageArgumentDepth: aMessageNode

	aMessageNode 
		argumentDepth: (self 
			collectMaximumOn: aMessageNode arguments 
			with: [:argument | argument depth])
			
		
	
