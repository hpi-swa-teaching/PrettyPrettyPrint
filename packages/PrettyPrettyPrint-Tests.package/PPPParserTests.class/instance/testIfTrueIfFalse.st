testing
testIfTrueIfFalse
	
	| tokens methodNode |
	
	methodNode := PPPParser parseMethodTokenStream: (ReadStream on: tokens).
	
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	self
		assert: 'ifTrue:ifFalse:'
			equals: methodNode bodySequence statements first selector;
		assert: 2
			equals: methodNode bodySequence statements first arguments size;
		assert: PPPBlockNode
			equals: methodNode bodySequence statements first arguments first class;
		assert: PPPBlockNode
			equals: methodNode bodySequence statements first arguments second class