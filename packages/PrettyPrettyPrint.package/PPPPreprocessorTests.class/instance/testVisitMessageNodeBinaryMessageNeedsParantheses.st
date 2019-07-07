as yet unclassified
testVisitMessageNodeBinaryMessageNeedsParantheses

	| sumMessageNode productMessageNode literalNode |
	
	literalNode := PPPLiteralNode value: '1' literalType: #number.
	
	"(1 + 1) * 1"
	sumMessageNode := PPPMessageNode receiver: literalNode selector: '+' argument: literalNode.
	productMessageNode := PPPMessageNode receiver: sumMessageNode selector: '*' argument: literalNode.
	PPPPreprocessor new visitMessageNode: productMessageNode.
	self assert: false equals: sumMessageNode needsParantheses.
	
	"1 * (1 + 1)"
	productMessageNode := PPPMessageNode receiver: literalNode selector: '*' argument: sumMessageNode.
	PPPPreprocessor new visitMessageNode: productMessageNode.
	self assert: true equals: sumMessageNode needsParantheses.