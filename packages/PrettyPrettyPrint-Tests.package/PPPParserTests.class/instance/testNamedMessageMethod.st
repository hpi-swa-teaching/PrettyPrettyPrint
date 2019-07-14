testing
testNamedMessageMethod
	
	| tokens methodNode |
	tokens := {
		PPPToken type: #identifier content: 'testMethod:'.
		PPPToken type: #identifier content: 'arg5'.
		PPPToken type: #identifier content: 'b:'.
		PPPToken type: #identifier content: 'arg6'.
		PPPToken type: #eof content: ''}.
		
	methodNode := PPPParser parseMethodTokenStream: (ReadStream on: tokens).
	
	tokens := { PPPToken type: #identifier content: 'testMethod:' . 
		PPPToken type: #identifier content: 'arg5' . 
		PPPToken type: #identifier content: 'b:' . 
		PPPToken type: #identifier content: 'arg6' . 
		PPPToken type: #eof content: '' }.
	
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	self
		assert: methodNode selector = 'testMethod:b:';
		assert: methodNode arguments first second = 'arg5';
		assert: methodNode arguments second second = 'arg6'