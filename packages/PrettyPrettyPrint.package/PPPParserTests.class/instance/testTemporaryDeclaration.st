testing
testTemporaryDeclaration
	| tokens methodNode |
	tokens := {
		PPPToken type: #identifier content: 'someMessage'.
		PPPToken type: #special content: '|'.
		PPPToken type: #identifier content: 'tmp'.
		PPPToken type: #special content: '|'.
		PPPToken type: #eof content: ''}.
		
	methodNode := PPPParser parseMethodTokenStream: (ReadStream on: tokens).
	
	self
		assert: methodNode bodySequence temporaries size equals: 1;
		assert: methodNode bodySequence temporaries first equals: 'tmp'