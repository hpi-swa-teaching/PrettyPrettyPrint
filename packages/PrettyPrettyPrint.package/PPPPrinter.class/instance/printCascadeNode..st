printing
printCascadeNode: aPPPCascadeNode
	
	self visitValueNode: aPPPCascadeNode receiver.
	self currentLine space.
	aPPPCascadeNode messages
		do: [ :message | self visitValueNode: message ]
		separatedBy: [ self currentLine nextPutAll: '; ' ]