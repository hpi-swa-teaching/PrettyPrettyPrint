as yet unclassified
testVisitMessageNodeArgumentNeedsParantheses

	| keywordMessageNode literalNode receiver argument |
	
	literalNode := PPPLiteralNode value: '1' literalType: #number.
	
	"literalNode keywordMessage: (literalNode keywordMessage: literalNode)"
	receiver := literalNode.
	keywordMessageNode := PPPMessageNode receiver: literalNode selector: 'keywordMessage:' argument: literalNode.
	argument := keywordMessageNode.
	keywordMessageNode := PPPMessageNode receiver: receiver selector: 'keywordMessage:' argument: argument.
	PPPPreprocessor new visitMessageNode: keywordMessageNode.
	self assert: true equals: argument needsParantheses.
	
	"literalNode keywordMessage: literalNode unaryMessage"
	receiver := literalNode.
	argument := PPPMessageNode receiver: receiver selector: 'unaryMessage'.
	keywordMessageNode := PPPMessageNode receiver: receiver selector: 'keywordMessage:' argument: argument.
	PPPPreprocessor new visitMessageNode: keywordMessageNode.
	self assert: false equals: argument needsParantheses.