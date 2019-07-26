testing
testReturnStatement
	
	| tokens methodNode |
	
	tokens := { PPPToken type: #identifier content: 'someMessage' . 
		PPPToken type: #special content: '^' . 
		PPPToken type: #identifier content: 'tmp' . 
		PPPToken type: #eof content: '' }.
	
	methodNode := PPPParser parseMethodTokenStream: (ReadStream on: tokens).
	self
		assert: methodNode bodySequence return value class
			equals: PPPVariableNode;
		assert: methodNode bodySequence return value name equals: 'tmp'