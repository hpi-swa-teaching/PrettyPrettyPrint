as yet unclassified
testVariableNodeMatches
	
	self
		assert: ((PPPVariableNode new name: 'Dieter')
				matches: (PPPVariableNode new name: 'Dieter'));
		assert: ((PPPVariableNode new name: 'Dieter')
				matches: (PPPVariableNode new name: 'Gieselherr')) not