as yet unclassified
testTemporaryDeclaration
	| tokens methodNode |
	tokens := {
		{#identifier. 'someMessage'}.
		{#special. '|'}.
		{#identifier. 'tmp'}.
		{#special. '|'}.
		{#eof. ''}}.
		
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	
	self
		assert: methodNode bodySequence temporaries size equals: 1;
		assert: methodNode bodySequence temporaries first equals: 'tmp'