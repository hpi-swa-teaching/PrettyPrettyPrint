as yet unclassified
testCascade
	| tokens methodNode |
	tokens := {
		PPPToken type: #identifier content: 'testMethod'.
		PPPToken type: #identifier content: 'self'.
		PPPToken type: #identifier content: 'asString'.
		PPPToken type: #special content: ';'.
		PPPToken type: #identifier content: 'toBuffer:'.
		PPPToken type: #number content: '5'.
		PPPToken type: #identifier content: 'and:'.
		PPPToken type: #number content: '3'.
		PPPToken type: #special content: ';'.
		PPPToken type: #identifier content: 'yourself'.
		PPPToken type: #eof content: ''}.
	
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	
	self
		assert: PPPCascadeNode equals: methodNode bodySequence statements first class;
		assert: 3 equals: methodNode bodySequence statements first messages size;
		assert: 'self' equals: methodNode bodySequence statements first receiver name;
		assert: 'asString' equals: methodNode bodySequence statements first messages first selector;
		assert: 'toBuffer:and:' equals: methodNode bodySequence statements first messages second selector;
		assert: 'yourself' equals: methodNode bodySequence statements first messages third selector