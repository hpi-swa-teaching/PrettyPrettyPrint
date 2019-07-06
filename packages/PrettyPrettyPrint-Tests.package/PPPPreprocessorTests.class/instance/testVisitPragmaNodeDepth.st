as yet unclassified
testVisitPragmaNodeDepth
	
	| aPragmaNode |
	
	aPragmaNode := PPPPragmaNode
		content: '<PrettyPrint: ''ignore'' option: ''true''>'.
	PPPPreprocessor new visitPragmaNode: aPragmaNode.
	self assert: 0 equals: aPragmaNode depth