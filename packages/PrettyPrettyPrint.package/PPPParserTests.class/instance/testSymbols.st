as yet unclassified
testSymbols
	| tokens methodNode |
	tokens := {
		PPPToken type: #identifier content: 'someMessage'.
		PPPToken type: #symbol content: '#tmp'.
		PPPToken type: #special content: '.'.
		PPPToken type: #symbolArrayStart content: '#('.
		PPPToken type: #identifier content: 'test'.
		PPPToken type: #number content: '123'.
		PPPToken type: #string content: 'aString'.
		PPPToken type: #special content: ')'.
		PPPToken type: #eof content: ''}.
	
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	
	self
		assert: 2 equals: methodNode bodySequence statements size;
		assert: #symbol equals: methodNode bodySequence statements first literalType;
		assert: PPPArrayNode equals: methodNode bodySequence statements second class;
		assert: 3 equals: methodNode bodySequence statements second contents size;
		assert: #identifier equals: methodNode bodySequence statements second contents first literalType;
		assert: #number equals: methodNode bodySequence statements second contents second literalType;
		assert: #string equals: methodNode bodySequence statements second contents third literalType;
		assert: PPPLiteralNode equals: methodNode bodySequence statements second contents first class