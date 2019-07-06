testing
testParseBinaryMessageDeclaration
	
	| tokens methodNode parsedMethodNode |
	
	tokens := { PPPToken type: #binaryOperator content: '++' . 
		PPPToken type: #identifier content: 'a' . PPPToken type: #eof content: '' }.
	
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	parsedMethodNode := PPPMethodNode
		bodySequence: (PPPSequenceNode new)
		selector: '++'
		arguments: (OrderedCollection new
			add: #( '++' 'a' );
			yourself).
	self assert: (parsedMethodNode matches: methodNode)