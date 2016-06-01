as yet unclassified
testReturnStatement
	| tokens methodNode |
	tokens := {
		{#identifier. 'someMessage'}.
		{#special. '^'}.
		{#identifier. 'tmp'}.
		{#eof. ''}}.
		
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	
	self
		assert: methodNode bodySequence return value class equals: PPPVariableNode;
		assert: methodNode bodySequence return value name equals: 'tmp'	
	