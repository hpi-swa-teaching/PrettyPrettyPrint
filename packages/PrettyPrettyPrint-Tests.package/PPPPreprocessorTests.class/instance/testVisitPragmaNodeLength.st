as yet unclassified
testVisitPragmaNodeLength
	
	| aPragmaNode |
	aPragmaNode := PPPPragmaNode content: '<PrettyPrint: ''ignore'' option: ''true''>'.
	PPPPreprocessor new visitPragmaNode: aPragmaNode.
	self assert: 38 equals: aPragmaNode length