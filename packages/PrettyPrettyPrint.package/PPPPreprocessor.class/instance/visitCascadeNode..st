visit-node
visitCascadeNode: aCascadeNode
	
	aCascadeNode messages do: [:message | message accept: self].
	aCascadeNode receiver accept: self.
	
	aCascadeNode receiver needsParantheses: (aCascadeNode receiver precedence >= aCascadeNode messages first precedence).
	
	aCascadeNode 
		length: (self lengthForCascadeNode: aCascadeNode);
		
		needsStructuralLinebreak: (self structuralLinebreakForCascadeNode: aCascadeNode)
	