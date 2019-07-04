visit-node
visitCascadeNode: aCascadeNode
	
	aCascadeNode receiver accept: self.
	aCascadeNode messages do: [:message | message accept: self].
	
	aCascadeNode 
		length: (self lengthForCascadeNode: aCascadeNode);
		depth: (self depthForCascadeNode: aCascadeNode)
	