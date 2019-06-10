as yet unclassified
testMessageNodeMatches
	
	| aMessageNode otherMessageNode |

	aMessageNode := PPPMessageNode receiver: 'Dieter' selector: 'sayHello' argument: (PPPVariableNode name: 'Hans').
	otherMessageNode := PPPMessageNode receiver: 'Dieter' selector: 'sayHello' argument: (PPPVariableNode name: 'Hans').
	
	self assert: (aMessageNode matches: otherMessageNode).
	
	otherMessageNode addArgument: (PPPVariableNode name: 'Sandra').
	self assert: (aMessageNode matches: otherMessageNode) not.