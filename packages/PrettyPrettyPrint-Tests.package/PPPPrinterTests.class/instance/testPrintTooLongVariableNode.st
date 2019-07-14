testing
testPrintTooLongVariableNode
	
	| variableNode printer variableName formattedVariable |
	
	printer := PPPPrinter new.
	self preferenceBlock value: printer profile.
	variableName := 
		'joisajfsapodjfposajdfpojsafjpsajfpoasjfdpaspofdjsapojfpoajsfpo'.
	variableNode := PPPVariableNode name: variableName.
	printer visitVariableNode: variableNode.
	formattedVariable := printer wholeContent.
	self assert: variableName equals: formattedVariable