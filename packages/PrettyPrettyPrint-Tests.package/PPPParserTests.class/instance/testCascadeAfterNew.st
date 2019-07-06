testing
testCascadeAfterNew
	
	| tokens methodNode referenceStatement |
	
	tokens := PPPTokenizer
		on: 
			'testMethod PPPToken new position: 3; tokenType: 2; content: 1; yourself'.
	
	referenceStatement := PPPCascadeNode
		receiver: (PPPMessageNode
			receiver: (PPPVariableNode name: 'PPPToken')
			selector: 'new')
		messages: { 
			PPPMessageNode
				receiver: nil
				selector: 'position:'
				argument: (PPPLiteralNode
					value: '3'
					literalType: #number) . 
			PPPMessageNode
				receiver: nil
				selector: 'tokenType:'
				argument: (PPPLiteralNode
					value: '2'
					literalType: #number) . 
			PPPMessageNode
				receiver: nil
				selector: 'content:'
				argument: (PPPLiteralNode
					value: '1'
					literalType: #number) . 
			PPPMessageNode receiver: nil selector: 'yourself' }.
	
	methodNode := PPPParser new parseTokenStream: tokens.
	self
		assertHierarchy: referenceStatement
		equals: methodNode bodySequence statements first