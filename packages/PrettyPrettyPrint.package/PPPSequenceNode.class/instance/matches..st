comparing
matches: aNode	
	^(self collectionOfNodes: aNode statements matches: self statements) and:
	[(self shallowMatch: aNode)]