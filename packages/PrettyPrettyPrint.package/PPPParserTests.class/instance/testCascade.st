testing
testCascade
	
	| tokens methodNode |
	
	tokens := { PPPToken type: #identifier content: 'testMethod' . 
		PPPToken type: #identifier content: 'self' . 
		PPPToken type: #identifier content: 'asString' . 
		PPPToken type: #special content: ';' . 
		PPPToken type: #identifier content: 'toBuffer:' . 
		PPPToken type: #number content: '5' . 
		PPPToken type: #identifier content: 'and:' . 
		PPPToken type: #number content: '3' . 
		PPPToken type: #special content: ';' . 
		PPPToken type: #identifier content: 'yourself' . 
		PPPToken type: #eof content: '' }.
	
	methodNode := PPPParser parseMethodTokenStream: (ReadStream on: tokens).
	self
		assertHierarchy: (PPPCascadeNode
			receiver: (PPPVariableNode name: 'self')
			messages: (OrderedCollection
				with: (PPPMessageNode
					receiver: nil
					selector: 'asString')
				with: (PPPMessageNode
					receiver: nil
					selector: 'toBuffer:and:'
					arguments: (OrderedCollection
						with: (PPPLiteralNode
							value: '5'
							literalType: #number)
						with: (PPPLiteralNode
							value: '3'
							literalType: #number)))
				with: (PPPMessageNode
					receiver: nil
					selector: 'yourself')))
		equals: methodNode bodySequence statements first