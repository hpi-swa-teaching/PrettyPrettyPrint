comparing
matches: aNode
	
	^ (self shallowMatch: aNode)
		and: [(aNode bodySequence matches: self bodySequence)
			and: [ aNode arguments = self arguments ] ]