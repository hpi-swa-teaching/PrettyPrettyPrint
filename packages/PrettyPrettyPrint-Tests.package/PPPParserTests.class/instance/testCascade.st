testing
testCascade
	
	| tokens methodNode |
	
	methodNode := PPPParser parseMethodTokenStream: (ReadStream on: tokens).
	
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
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