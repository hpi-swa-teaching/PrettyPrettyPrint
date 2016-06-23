as yet unclassified
matches: aNode
	^(self collectionOfNodes: aNode statements matches: self statements) and:
	[(self shallowMatch: aNode) and:
	[aNode return matches: self return]]