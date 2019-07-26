as yet unclassified
testAssignmentNodeMatches
	
	self
		assert: ((PPPAssignmentNode
				variable: 'Dieter'
				value: (PPPVariableNode name: 'Hans'))
			matches: (PPPAssignmentNode
				variable: 'Dieter'
				value: (PPPVariableNode name: 'Hans')));
		assert: ((PPPAssignmentNode
				variable: 'Dieter'
				value: (PPPVariableNode name: 'Paul'))
			matches: (PPPAssignmentNode
				variable: 'Dieter'
				value: (PPPVariableNode name: 'Hans'))) not