testing
testCharacters
	| tokens methodNode |
	tokens := {
		PPPToken type: #identifier content: 'testMethod'.
		PPPToken type: #character content: '$a'.
		PPPToken type: #identifier content: 'asString'.
		PPPToken type: #special content: '.'.
		PPPToken type: #string content: '$$'.
		PPPToken type: #eof content: ''}.
	
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	
	self
		assert: PPPMessageNode equals: methodNode bodySequence statements first class;
		assert: '$a' equals: methodNode bodySequence statements first receiver value;
		assert: 'asString' equals: methodNode bodySequence statements first selector;
		assert: PPPLiteralNode equals: methodNode bodySequence statements second class;
		assert: '$$' equals: methodNode bodySequence statements second value