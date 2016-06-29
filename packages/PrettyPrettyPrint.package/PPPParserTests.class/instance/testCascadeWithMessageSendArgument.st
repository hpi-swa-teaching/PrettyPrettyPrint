as yet unclassified
testCascadeWithMessageSendArgument
	| tokens methodNode referenceStatement |
	tokens := PPPTokenizer on: 'testMethod token content: buffer contents;tokenType: 1;yourself'.
	
	referenceStatement := PPPCascadeNode
		receiver: (PPPVariableNode name: 'token')
		messages: {
			PPPMessageNode
				receiver: nil
				selector: 'content:'
				argument: (PPPMessageNode receiver: (PPPVariableNode name: 'buffer') selector: 'contents').
			PPPMessageNode receiver: nil selector: 'tokenType:' argument: (PPPLiteralNode value: '1' literalType: #number).
			PPPMessageNode receiver: nil selector: 'yourself' }.
	
	methodNode := PPPParser new parseTokenStream: tokens.
	
	self
		assertHierarchy: referenceStatement equals: methodNode bodySequence statements first