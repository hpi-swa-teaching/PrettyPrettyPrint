as yet unclassified
testVisitArrayNodeLength
	
	| anArrayNode content |
	content := OrderedCollection with: self literalNode with: self variableNode.
	anArrayNode := PPPArrayNode contents: content constant: true.
			
	PPPPreprocessor new visitArrayNode: anArrayNode.
	
	self assert: 13 equals: anArrayNode length.
	
	content := OrderedCollection with: self literalNode with: (PPPMessageNode receiver: self variableNode selector: 'someMessage').
	anArrayNode contents: content.
	anArrayNode constant: false.
	PPPPreprocessor new visitArrayNode: anArrayNode.
	
	self assert: 26 equals: anArrayNode length
	