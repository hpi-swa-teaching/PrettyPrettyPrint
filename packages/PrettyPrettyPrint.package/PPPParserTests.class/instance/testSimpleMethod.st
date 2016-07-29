testing
testSimpleMethod
	"someMessage|tmp|tmp:=16r123123*2.^tmp"
	| tokens methodNode |
	tokens := {
		PPPToken type: #identifier content: 'someMessage'.
		PPPToken type: #special content: '|'.
		PPPToken type: #identifier content: 'tmp'.
		PPPToken type: #special content: '|'.
		PPPToken type: #identifier content: 'tmp'.
		PPPToken type: #assignment content: ':='.
		PPPToken type: #number content: '16r123123'.
		PPPToken type: #binaryOperator content: '*'.
		PPPToken type: #number content: '2'.
		PPPToken type: #special content: '.'.
		PPPToken type: #special content: '^'.
		PPPToken type: #identifier content: 'tmp'.
		PPPToken type: #eof content: ''}.
		
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	
	self
		assert: methodNode bodySequence statements first class equals: PPPAssignmentNode;
		assert: methodNode bodySequence statements first value class equals: PPPMessageNode;
		
		assert: methodNode bodySequence statements first value receiver class equals: PPPLiteralNode;
		assert: methodNode bodySequence statements first value receiver value equals: '16r123123';
		assert: methodNode bodySequence statements first value arguments first value equals: '2';
		
		assert: methodNode bodySequence return notNil equals: true;
		assert: methodNode bodySequence return value class equals: PPPVariableNode;
		assert: methodNode bodySequence return value name equals: 'tmp'