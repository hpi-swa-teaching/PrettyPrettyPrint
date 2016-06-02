as yet unclassified
testSimpleAssignment
	| tokens methodNode |
	tokens := {
		{#identifier. 'someMessage'}.
		{#special. '|'}.
		{#identifier. 'tmp'}.
		{#special. '|'}.
		{#identifier. 'tmp'}.
		{#assignment. ':='}.
		{#number. '2'}.
		{#special. '.'}.
		{#eof. ''}}.
		
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	
	self
		assert: methodNode bodySequence statements first class equals: PPPAssignmentNode;
		assert: methodNode bodySequence statements first variable equals: 'tmp';
		
		assert: methodNode bodySequence statements first value class equals: PPPLiteralNode;
		assert: methodNode bodySequence statements first value value equals: '2'