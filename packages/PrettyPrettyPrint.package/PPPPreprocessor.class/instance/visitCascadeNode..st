visit-node
visitCascadeNode: aCascadeNode
	
	aCascadeNode messages do: [:message | message accept: self].
	aCascadeNode receiver accept: self.
	
	aCascadeNode 
		length: (self lengthForCascadeNode: aCascadeNode);
		depth: (self depthForCascadeNode: aCascadeNode)
	