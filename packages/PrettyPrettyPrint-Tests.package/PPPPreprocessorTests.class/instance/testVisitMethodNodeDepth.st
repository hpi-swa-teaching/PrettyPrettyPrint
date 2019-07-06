as yet unclassified
testVisitMethodNodeDepth
	
	| aMethodNode bodySequence aBlockNode |
	
	aBlockNode := PPPBlockNode
		bodySequence: (PPPSequenceNode
			statements: (OrderedCollection
				with: (PPPVariableNode name: 'Dieter')
				with: (PPPLiteralNode value: '1' literalType: #number))).
	bodySequence := PPPSequenceNode
		statements: { PPPVariableNode name: 'DieterReturns' . aBlockNode }.
	aMethodNode := PPPMethodNode
		bodySequence: bodySequence
		selector: 'newestBlockBuster:'
		arguments: { { 'newestBlockBuster:' . 'aBoolean' } }.
	
	PPPPreprocessor new visitMethodNode: aMethodNode.
	
	"The length of the method node only needs to be the whole selector with its arguments."
	self assert: 0 equals: aMethodNode depth