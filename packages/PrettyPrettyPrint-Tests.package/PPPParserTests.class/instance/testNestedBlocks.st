testing
testNestedBlocks
	| tokens methodNode referenceStatement |
	tokens := PPPTokenizer on: 'testMethod [ [ true ifTrue: [ :e | e high ] ] ]'.
	
	referenceStatement := (PPPMethodNode 
		bodySequence: (PPPSequenceNode 
			statements: {(PPPBlockNode
				bodySequence: (PPPSequenceNode 
					statements: {(PPPBlockNode
							bodySequence: (PPPSequenceNode
								statements: {(PPPMessageNode
									receiver: (PPPVariableNode name: 'true')
									selector: 'ifTrue:'
									arguments: {(PPPBlockNode
										bodySequence: (PPPSequenceNode
											statements: {(PPPMessageNode
												receiver: (PPPVariableNode name: 'e')
												selector: 'high')})			
										bindings: ({ ':e' }))})}))}))})
										
		selector: 'testMethod').
	
	methodNode := PPPParser new parseTokenStream: tokens.
	
	self
		assertHierarchy: referenceStatement equals: methodNode