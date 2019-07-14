as yet unclassified
testIfInCascade
	
	| aPPPMessageNode temp |
	
	aPPPMessageNode := PPPMessageNode receiver: nil selector: 'sayHello'.
	temp := false.
	aPPPMessageNode ifInCascade: [ temp := true ].
	self assert: temp.
	
	aPPPMessageNode receiver: (PPPVariableNode name: 'dieter').
	aPPPMessageNode ifInCascade: [ temp := false ].
	self assert: temp