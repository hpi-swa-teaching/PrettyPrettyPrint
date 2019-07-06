as yet unclassified
testVisitMessageNodeReceiverNeedsParantheses

	| keywordMessageNode unaryMessageNode literalNode receiver |
	
	literalNode := PPPLiteralNode value: '1' literalType: #number.

	"literalNode keywordMessage: literalNode"
	receiver := literalNode.
	keywordMessageNode := PPPMessageNode receiver: receiver selector: 'keywordMessage:' argument: literalNode.
	PPPPreprocessor new visitMessageNode: keywordMessageNode.
	self assert: false equals: receiver needsParantheses.
	
	"(literalNode keywordMessage: literalNode) unaryMessage"
	receiver := keywordMessageNode.
	unaryMessageNode := PPPMessageNode receiver: receiver selector: 'unaryMessage'.
	PPPPreprocessor new visitMessageNode: keywordMessageNode.
	self assert: true equals: receiver needsParantheses.