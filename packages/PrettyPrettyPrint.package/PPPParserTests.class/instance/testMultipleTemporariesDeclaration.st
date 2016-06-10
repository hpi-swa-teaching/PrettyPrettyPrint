as yet unclassified
testMultipleTemporariesDeclaration
	| tokens methodNode |
	tokens := {
		PPPToken type: #identifier content: 'someMessage'.
		PPPToken type: #special content: '|'.
		PPPToken type: #identifier content: 'tmp'.
		PPPToken type: #identifier content: 'tmp2'.
		PPPToken type: #special content: '|'.
		PPPToken type: #eof content: ''}.
		
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	
	self
		assert: methodNode bodySequence temporaries size equals: 2;
		assert: methodNode bodySequence temporaries second equals: 'tmp2'