instance creation
temporaries: anArray statements: anotherArray return: aReturnNode
	^self new
		temporaries: anArray;
		statements: anotherArray;
		return: aReturnNode;
		yourself