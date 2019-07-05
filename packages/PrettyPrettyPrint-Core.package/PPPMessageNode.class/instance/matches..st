comparing
matches: aNode 
	^(self shallowMatch: aNode) and: [ (self collectionOfNodes: aNode arguments matches: self arguments) ]