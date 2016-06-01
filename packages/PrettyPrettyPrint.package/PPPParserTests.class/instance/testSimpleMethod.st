as yet unclassified
testSimpleMethod
	"someMessage|tmp|tmp:=16r123123*2.^tmp"
	| tokens |
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
		{#special. '^'}.
		{#identifier. 'tmp'}}.
		
	PPPParser new parseTokenStream: (ReadStream on: tokens).