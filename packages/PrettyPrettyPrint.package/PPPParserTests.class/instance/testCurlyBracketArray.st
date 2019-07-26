testing
testCurlyBracketArray
	
	| tokens methodNode |
	
	tokens := { PPPToken type: #identifier content: 'testMethod' . 
		PPPToken type: #special content: '{' . 
		PPPToken type: #identifier content: 'self' . 
		PPPToken type: #identifier content: 'open' . 
		PPPToken type: #special content: '.' . 
		PPPToken type: #number content: '5' . 
		PPPToken type: #special content: '}' . PPPToken type: #eof content: '' }.
	
	methodNode := PPPParser parseMethodTokenStream: (ReadStream on: tokens).
	
	self
		assertHierarchy: (PPPArrayNode
			contents: (OrderedCollection
				with: (PPPMessageNode
					receiver: (PPPVariableNode name: 'self')
					selector: 'open'
					arguments: OrderedCollection new)
				with: (PPPLiteralNode value: '5' literalType: #number))
			constant: false)
		equals: methodNode bodySequence statements first.
	self
		assert: PPPArrayNode
			equals: methodNode bodySequence statements first class;
		assert: methodNode bodySequence statements first constant not;
		assert: PPPMessageNode
			equals: methodNode bodySequence statements first contents first class;
		assert: PPPLiteralNode
			equals: methodNode bodySequence statements first contents second class