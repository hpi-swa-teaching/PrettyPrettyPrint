accessing
matches: aNode
	^(self shallowMatch: aNode) and: [self collectionOfNodes: aNode messages matches: self messages]