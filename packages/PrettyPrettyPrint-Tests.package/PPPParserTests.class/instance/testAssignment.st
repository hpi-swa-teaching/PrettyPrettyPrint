as yet unclassified
testAssignment
	| tokens methodNode |
	tokens := {
		{#identifier. 'someMessage'}.
		{#special. '|'}.
		{#identifier. 'tmp'}.
		{#special. '|'}.
		{#identifier. 'tmp'}.
		{#assignment. ':='}.
		{#number. '16r123123'}.
		{#binaryOperator. '*'}.
		{#number. '2'}.
		{#special. '.'}.
		{#eof. ''}}.
	
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	
	self
		assert: methodNode bodySequence statements first class equals: PPPAssignmentNode;
		assert: methodNode bodySequence statements first variable equals: 'tmp';
		assert: methodNode bodySequence statements first value class equals: PPPMessageNode;
		assert: methodNode bodySequence statements first value selector equals: '*'