as yet unclassified
testMultipleTemporariesDeclaration
	| tokens methodNode |
	tokens := {
		{#identifier. 'someMessage'}.
		{#special. '|'}.
		{#identifier. 'tmp'}.
		{#identifier. 'tmp2'}.
		{#special. '|'}.
		{#eof. ''}}.
		
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	
	self
		assert: methodNode bodySequence temporaries size equals: 2;
		assert: methodNode bodySequence temporaries second equals: 'tmp2'