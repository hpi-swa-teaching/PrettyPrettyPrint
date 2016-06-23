accessing
shallowMatch: aNode
	^(aNode receiver matches: self receiver) and: [aNode selector = self selector]