testing
testPrintTooLongVariableNode

	| variableNode printer variableName |
	
	printer := PPPPrinter new.
	self preferenceBlock value: printer profile.
	variableName := 'joisajfsapodjfposajdfpojsafjpsajfpoasjfdpaspofdjsapojfpoajsfpo'.
	variableNode := PPPVariableNode name: variableName.
	
	self assert: variableName equals: (printer visitVariableNode: variableNode)