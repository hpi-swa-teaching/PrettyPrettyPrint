parse-node
flushCommentsTo: aNode
	aNode comments: currentComments.
	currentComments := OrderedCollection new.
	^aNode