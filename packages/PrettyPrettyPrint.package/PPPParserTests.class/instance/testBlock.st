as yet unclassified
testBlock
	| tokens methodNode assignment block |
	tokens := {
		PPPToken type: #identifier content: 'testMethod'.
		PPPToken type: #identifier content: 'a'.
		PPPToken type: #assignment content: ':='.
		PPPToken type: #special content: '['.
		PPPToken type: #identifier content: ':b'.
		PPPToken type: #identifier content: ':c'.
		PPPToken type: #special content: '|'.
		PPPToken type: #special content: '|'.
		PPPToken type: #identifier content: 'arg1'.
		PPPToken type: #special content: '|'.
		PPPToken type: #identifier content: 'arg1'.
		PPPToken type: #assignment content: ':='.
		PPPToken type: #identifier content: 'b'.
		PPPToken type: #special content: '.'.
		PPPToken type: #identifier content: 'arg1'.
		PPPToken type: #identifier content: 'test'.
		PPPToken type: #special content: ']'.
		PPPToken type: #eof content: '' }.
	
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	assignment := methodNode bodySequence statements first.
	block := assignment value.
	
	self
		assert: assignment class equals: PPPAssignmentNode;
		assert: assignment value class equals: PPPBlockNode;
		
		assert: block bodySequence temporaries first equals: 'arg1';
		assert: block bodySequence statements first class equals: PPPAssignmentNode;
		assert: block bodySequence statements size equals: 2