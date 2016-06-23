as yet unclassified
matches: aNode
	^(self shallowMatch: aNode) and: [aNode bodySequence matches: self bodySequence]