as yet unclassified
testCollectionOfNodesMatches
	
	| aNodeCollection otherNodeCollection |
	
	aNodeCollection := OrderedCollection new
		add: (PPPLiteralNode new value: 'Hi');
		add: (PPPPragmaNode new content: '<Welt>');
		yourself.
	otherNodeCollection := OrderedCollection new
		add: (PPPLiteralNode new value: 'Hi');
		add: (PPPPragmaNode new content: '<Welt>');
		yourself.
	
	self
		assert: (PPPNode new
			collectionOfNodes: aNodeCollection
			matches: otherNodeCollection).
	
	otherNodeCollection add: (PPPVariableNode new name: 'variable').
	self
		assert: (PPPNode new
				collectionOfNodes: aNodeCollection
				matches: otherNodeCollection) not