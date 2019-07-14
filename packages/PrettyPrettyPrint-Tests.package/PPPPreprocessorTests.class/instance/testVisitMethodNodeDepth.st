as yet unclassified
testVisitMethodNodeDepth
	
	| aMethodNode bodySequence aBlockNode |
	aBlockNode := PPPBlockNode bodySequence: 
		(PPPSequenceNode statements: 
			(OrderedCollection 
				with: self variableNode 
				with: self literalNode)).
	bodySequence := PPPSequenceNode statements: { self variableNode .  aBlockNode }.
	aMethodNode := PPPMethodNode 
		bodySequence: bodySequence 
		selector: 'someMessage:' 
		arguments: {{'someMessage:' . 'someArgument'}}.
		
	PPPPreprocessor new visitMethodNode: aMethodNode.
	"The length of the method node only needs to be the whole selector with its arguments."
	self assert: 0 equals: aMethodNode depth