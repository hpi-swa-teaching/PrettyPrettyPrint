as yet unclassified
testVisitMessageNodeLength
	
	| aMessageNode content |
	
	aMessageNode := self unaryMessageNode.
	PPPPreprocessor new visitMessageNode: aMessageNode.
	
	self assert: 20 equals: aMessageNode length.
	
	content := OrderedCollection
		with: self literalNode
		with: self unaryMessageNode.
	aMessageNode receiver: (PPPArrayNode contents: content constant: false).
	PPPPreprocessor new visitMessageNode: aMessageNode.
	self assert: 38 equals: aMessageNode length