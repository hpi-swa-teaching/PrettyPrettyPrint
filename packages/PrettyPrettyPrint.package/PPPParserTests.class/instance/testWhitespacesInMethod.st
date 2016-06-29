as yet unclassified
testWhitespacesInMethod
	| methodNode reference |
	methodNode := PPPParser new parseTokenStream: (PPPTokenizer on: 'testMethod    
	test   :=  5   +6.
	
	
	 [  self    hi]   ').
	
	reference := PPPSequenceNode
		temporaries: {}
		statements: {
			PPPAssignmentNode
				variable: 'test'
				value: (PPPMessageNode
					receiver: (PPPLiteralNode value: '5' literalType: #number)
					selector: '+'
					argument: (PPPLiteralNode value: '6' literalType: #number)).
			PPPBlockNode
				bodySequence: (PPPSequenceNode
					temporaries: {}
					statements: { PPPMessageNode receiver: (PPPVariableNode name: 'self') selector: 'hi' })
				bindings: {}
		}.
	
	self assertHierarchy: reference equals: methodNode bodySequence