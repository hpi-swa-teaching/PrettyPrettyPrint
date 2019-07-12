as yet unclassified
nodeWithoutStructuralLinebreak
	
	| someNode |
	
	someNode := PPPVariableNode name: 'variable'.
	someNode needsStructuralLinebreak: false.
	
	^ someNode