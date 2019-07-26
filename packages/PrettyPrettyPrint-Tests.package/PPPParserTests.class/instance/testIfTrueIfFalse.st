testing
testIfTrueIfFalse
	
	| tokens methodNode |
	
	tokens := { PPPToken type: #identifier content: 'testMethod' . 
		PPPToken type: #identifier content: 'true' . 
		PPPToken type: #identifier content: 'ifTrue:' . 
		PPPToken type: #special content: '[' . 
		PPPToken type: #identifier content: 'Transcript' . 
		PPPToken type: #identifier content: 'show:' . 
		PPPToken type: #string content: 'hi' . 
		PPPToken type: #special content: ']' . 
		PPPToken type: #identifier content: 'ifFalse:' . 
		PPPToken type: #special content: '[' . 
		PPPToken type: #identifier content: 'Transcript' . 
		PPPToken type: #identifier content: 'show:' . 
		PPPToken type: #string content: 'bye' . 
		PPPToken type: #special content: ']' . PPPToken type: #eof content: '' }.
	
	methodNode := PPPParser parseMethodTokenStream: (ReadStream on: tokens).
	self
		assert: 'ifTrue:ifFalse:'
			equals: methodNode bodySequence statements first selector;
		assert: 2
			equals: methodNode bodySequence statements first arguments size;
		assert: PPPBlockNode
			equals: methodNode bodySequence statements first arguments first class;
		assert: PPPBlockNode
			equals: methodNode bodySequence statements first arguments second class