as yet unclassified
dummyAst
	
	| sequenceNode |
	
	sequenceNode := PPPSequenceNode new statements: self allPragmas.
	
	^ PPPMethodNode new bodySequence: sequenceNode