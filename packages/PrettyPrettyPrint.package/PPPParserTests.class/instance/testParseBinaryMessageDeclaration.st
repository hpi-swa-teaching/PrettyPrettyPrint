testing
testParseBinaryMessageDeclaration
	| tokens  methodNode |
	tokens := {
		PPPToken type: #binaryOperator content: '++'.
		PPPToken type: #identifier content: 'a'.
		PPPToken type: #eof content: '' }.
	
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	
	self assert: ((PPPMethodNode bodySequence: (PPPSequenceNode new) selector: '++' arguments: {'a'}) matches: methodNode)