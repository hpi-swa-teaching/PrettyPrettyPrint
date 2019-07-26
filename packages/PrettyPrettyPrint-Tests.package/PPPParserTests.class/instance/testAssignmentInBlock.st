testing
testAssignmentInBlock
	
	| tokens methodNode |
	
	tokens := { PPPToken type: #identifier content: 'peek' . 
		PPPToken type: #special content: '^' . 
		PPPToken type: #identifier content: 'nextObject' . 
		PPPToken type: #identifier content: 'ifNil:' . 
		PPPToken type: #special content: '[' . 
		PPPToken type: #identifier content: 'nextObject' . 
		PPPToken type: #assignment content: ':=' . 
		PPPToken type: #identifier content: 'self' . 
		PPPToken type: #identifier content: 'next' . 
		PPPToken type: #special content: ']' . PPPToken type: #eof content: '' }.
	
	methodNode := PPPParser parseMethodTokenStream: (ReadStream on: tokens).
	self
		assert: PPPAssignmentNode
		equals: methodNode bodySequence return value arguments first bodySequence statements first class