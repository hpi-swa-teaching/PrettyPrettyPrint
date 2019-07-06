as yet unclassified
parantheses

	| literalNode |
	
	literalNode := PPPLiteralNode value: '1' literalType: #number.
	
	"Test receiver"
	(literalNode keywordMessage: literalNode) unaryMessage.
	(literalNode) keywordMessage: literalNode.

	"Test arguments"
	literalNode keywordMessage: (literalNode keywordMessage: literalNode).
	literalNode keywordMessage: (literalNode unaryMessage)