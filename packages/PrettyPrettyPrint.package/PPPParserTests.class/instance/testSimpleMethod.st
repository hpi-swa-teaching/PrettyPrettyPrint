as yet unclassified
testSimpleMethod
	"someMessage|tmp|tmp:=16r123123*2.^tmp"
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
		{#special. '^'}.
		{#identifier. 'tmp'}.
		{#eof. ''}}.
		
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	
	self
		assert: methodNode bodySequence statements first class equals: PPPAssignmentNode;
		assert: methodNode bodySequence statements first value class equals: PPPMessageNode;
		
		assert: methodNode bodySequence statements first value receiver class equals: PPPLiteralNode;
		assert: methodNode bodySequence statements first value receiver value equals: '16r123123';
		assert: methodNode bodySequence statements first value arguments first value equals: '2';
		
		assert: methodNode bodySequence return notNil equals: true;
		assert: methodNode bodySequence return value class equals: PPPVariableNode;
		assert: methodNode bodySequence return value name equals: 'tmp'