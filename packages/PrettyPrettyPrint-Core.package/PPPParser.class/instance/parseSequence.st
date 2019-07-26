parse-node
parseSequence
	| node |
	
	node := self sequenceNodeWithTemporariesAndPragmas.
	
	[ self nextToken endsSequence ] whileFalse: [self parseSequencePartFor: node].
	
	node trailingComments: self currentComments.
	self currentComments: OrderedCollection new.
	
	^ node