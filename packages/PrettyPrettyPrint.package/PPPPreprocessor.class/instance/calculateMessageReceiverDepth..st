visit-node
calculateMessageReceiverDepth: aMessageNode

	aMessageNode
		argumentDepth: (self 
			collectMaximumOn: aMessageNode arguments 
			with: [:argument | argument depth])
		
	
