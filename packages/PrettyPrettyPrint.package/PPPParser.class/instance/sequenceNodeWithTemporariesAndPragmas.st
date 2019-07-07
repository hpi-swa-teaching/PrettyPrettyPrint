parse-node
sequenceNodeWithTemporariesAndPragmas
	
	| node |
	node := PPPSequenceNode new.
	[self nextToken isPragma] whileTrue: [self parsePragmaFor: node].
	node temporaries: self parseTemporaries.
	[self nextToken isPragma] whileTrue: [self parsePragmaFor: node].
	^ node