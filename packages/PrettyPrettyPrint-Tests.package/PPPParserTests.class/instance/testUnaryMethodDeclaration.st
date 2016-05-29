as yet unclassified
testUnaryMethodDeclaration
	| tokens methodNode |
	tokens := {{#identifier. 'someMessage'}}.
		
	methodNode := PPPParser new parseTokenStream: (ReadStream on: tokens).
	
	self assert: methodNode selector equals: 'someMessage'