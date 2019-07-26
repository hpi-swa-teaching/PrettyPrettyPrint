parse-node
parsePragmaFor: aNode
	
	self nextToken isPragma
		ifTrue: [
			aNode statements
				add: (PPPPragmaNode new
					content: self step content;
					yourself) ]