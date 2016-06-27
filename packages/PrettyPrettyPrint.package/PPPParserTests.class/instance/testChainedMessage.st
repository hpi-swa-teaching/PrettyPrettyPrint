as yet unclassified
testChainedMessage
	| tokens methodNode referenceFirstStatement referenceSecondStatement firstStatement secondStatement |
	tokens := {
		PPPToken type: #identifier content: 'testMethod'.
		PPPToken type: #identifier content: 'self'.
		PPPToken type: #identifier content: 'asString'.
		PPPToken type: #identifier content: 'test'.
		PPPToken type: #identifier content: 'hi'.
		PPPToken type: #special content: '.'.
		PPPToken type: #number content: '5'.
		PPPToken type: #binaryOperator content: '+'.
		PPPToken type: #number content: '7'.
		PPPToken type: #binaryOperator content: '+'.
		PPPToken type: #number content: '3'.
		PPPToken type: #eof content: ''}.
	
	referenceFirstStatement := PPPMessageNode
		receiver: (PPPMessageNode
			receiver: (PPPMessageNode receiver: (PPPVariableNode name: 'self') selector: 'asString')
			selector: 'test')
		selector: 'hi'.
	
	referenceSecondStatement := PPPMessageNode
		receiver: (PPPLiteralNode value: '5' literalType: #number)
		selector: '+'
		argument: (PPPMessageNode
			receiver: (PPPLiteralNode value: '7' literalType: #number)
			selector: '+'
			argument: (PPPLiteralNode value: '3' literalType: #number)).
	
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	
	firstStatement := methodNode bodySequence statements first.
	secondStatement := methodNode bodySequence statements second.
	
	self
		assertHierarchy: referenceFirstStatement equals: firstStatement;
		assertHierarchy: referenceSecondStatement equals: secondStatement