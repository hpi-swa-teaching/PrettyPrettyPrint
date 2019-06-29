as yet unclassified
nodeWithStructuralLinebreak
	
	| someNode |
	
	someNode := PPPVariableNode name: 'hans'.
	someNode needsStructuralLinebreak: true.
	
	^ someNode