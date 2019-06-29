as yet unclassified
nodeWithoutStructuralLinebreak
	
	| someNode |
	
	someNode := PPPVariableNode name: 'hans'.
	someNode needsStructuralLinebreak: false.
	
	^ someNode