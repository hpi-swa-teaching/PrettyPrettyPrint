visit-node
printCascadeNode: aPPPCascadeNode 
	| buffer |
	buffer := WriteStream on: ''.
	
	buffer nextPutAll: (self visitValueNode: aPPPCascadeNode receiver).
	buffer nextPut: Character space.
	
	aPPPCascadeNode messages
		do: [ :message |
			buffer nextPutAll: (self visitValueNode: message) ]
		separatedBy: [ buffer nextPutAll: '; ' ].
	
	^buffer contents