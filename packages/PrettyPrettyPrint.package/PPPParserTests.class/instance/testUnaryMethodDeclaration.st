testing
testUnaryMethodDeclaration
	
	| tokens methodNode |
	
	tokens := { PPPToken type: #identifier content: 'someMessage' . 
		PPPToken type: #eof content: '' }.
	
	methodNode := PPPParser parseMethodTokenStream: (ReadStream on: tokens).
	self assert: methodNode selector equals: 'someMessage'