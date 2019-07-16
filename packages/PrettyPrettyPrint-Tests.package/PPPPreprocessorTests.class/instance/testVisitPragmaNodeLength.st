as yet unclassified
testVisitPragmaNodeLength
	
	| aPragmaNode |
	aPragmaNode := PPPPragmaNode content: '<PrettyPrint: #ignore option: true>'.
	PPPPreprocessor new visitPragmaNode: aPragmaNode.
	self assert: 35 equals: aPragmaNode length