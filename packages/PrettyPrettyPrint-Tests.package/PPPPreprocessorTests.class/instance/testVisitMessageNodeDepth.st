as yet unclassified
testVisitMessageNodeDepth
	
	| aMessageNode content |
	
	aMessageNode := self unaryMessageNode.		
	PPPPreprocessor new visitMessageNode: aMessageNode.
	
	self assert: 0 equals: aMessageNode depth.
	
	content := OrderedCollection with: self literalNode with: self unaryMessageNode.
	aMessageNode receiver: (PPPArrayNode contents: content constant: false).
	PPPPreprocessor new visitMessageNode: aMessageNode.
	self assert: 1 equals: aMessageNode depth