utility
assertHierarchy: aNode equals: anotherNode
	| actual expected |
	expected := OrderedCollection new.
	actual := OrderedCollection new.
	
	aNode nodesDo: [ :node | expected add: node ].
	anotherNode nodesDo: [ :node | actual add: node ].
	
	self assert: expected size equals: actual size description: 'AST has different number of nodes'.
	
	1 to: actual size do: [ :index |
		| expectedNode actualNode |
		expectedNode := expected at: index.
		actualNode := actual at: index.
		
		self
			assert: expectedNode class equals: actualNode class;
			assert: (expectedNode shallowMatch: actualNode) ]