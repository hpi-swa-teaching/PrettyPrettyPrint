set needsParantheses
setParanthesesForMessageNode: aMessageNode

	self setParanthesesForReceiverOf: aMessageNode.
	
	aMessageNode arguments do: [:node | 
		self setParanthesesForArgument: node ofMessage: aMessageNode].
		
	
