parantheses
setParanthesesForMessageNode: aMessageNode

	self setParanthesesForReceiver: aMessageNode receiver ofMessage: aMessageNode.
	
	aMessageNode arguments do: [:node | 
		self setParanthesesForArgument: node ofMessage: aMessageNode].
		
	
