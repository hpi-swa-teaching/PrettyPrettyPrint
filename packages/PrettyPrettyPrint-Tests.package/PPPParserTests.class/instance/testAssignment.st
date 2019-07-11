testing
testAssignment
	| tokens methodNode |
	tokens := {
		PPPToken type: #identifier content: 'someMessage'.
		PPPToken type: #special content: '|'.
		PPPToken type: #identifier content: 'tmp'.
		PPPToken type: #special content: '|'.
		PPPToken type: #identifier content: 'tmp'.
		PPPToken type: #assignment content: ':='.
		PPPToken type: #number content: '16r123123'.
		PPPToken type: #binaryOperator content: '*'.
		PPPToken type: #number content: '2'.
		PPPToken type: #special content: '.'.
		PPPToken type: #eof content: ''}.
	
	methodNode := PPPParser parseMethodTokenStream: (ReadStream on: tokens).
	
	self
		assert: methodNode bodySequence statements first class equals: PPPAssignmentNode;
		assert: methodNode bodySequence statements first variable equals: 'tmp';
		assert: methodNode bodySequence statements first value class equals: PPPMessageNode;
		assert: methodNode bodySequence statements first value selector equals: '*'