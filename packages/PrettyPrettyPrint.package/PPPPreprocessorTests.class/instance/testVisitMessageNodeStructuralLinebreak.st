as yet unclassified
testVisitMessageNodeStructuralLinebreak
	
	| aMessageNode |
	
	aMessageNode := PPPMessageNode receiver: self nodeWithoutStructuralLinebreak selector: 'helloWorld'.		
	PPPPreprocessor new visitMessageNode: aMessageNode.
	self assert: false equals: aMessageNode needsStructuralLinebreak.
	
	aMessageNode receiver: self nodeWithStructuralLinebreak.
	PPPPreprocessor new visitMessageNode: aMessageNode.
	self assert: true equals: aMessageNode needsStructuralLinebreak.
	
	aMessageNode := PPPMessageNode 
		receiver: self nodeWithoutStructuralLinebreak 
		selector: 'firstArg:secArg:'
		arguments: (OrderedCollection 
			with: self nodeWithStructuralLinebreak 
			with: self nodeWithoutStructuralLinebreak).
	PPPPreprocessor new visitMessageNode: aMessageNode.
	self assert: true equals: aMessageNode needsStructuralLinebreak