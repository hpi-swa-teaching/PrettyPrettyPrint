parse-node
flushCommentsTo: aNode
	aNode comments: (aNode comments addAll: self currentComments; yourself).
	self currentComments: OrderedCollection new.

	^aNode