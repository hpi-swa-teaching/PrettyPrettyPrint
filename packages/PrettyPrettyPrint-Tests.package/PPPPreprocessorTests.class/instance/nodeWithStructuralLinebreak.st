as yet unclassified
nodeWithStructuralLinebreak
	
	| someNode |
	
	someNode := PPPVariableNode name: 'variable'.
	someNode needsStructuralLinebreak: true.
	
	^ someNode