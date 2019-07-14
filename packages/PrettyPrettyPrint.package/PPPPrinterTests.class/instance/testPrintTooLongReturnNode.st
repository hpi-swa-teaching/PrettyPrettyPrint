testing
testPrintTooLongReturnNode
	
	| variableNode returnNode messageNode printer variableName 
		firstMessageSelector secondMessageSelector firstArgumentNode 
		secondArgumentNode formattedReturn |
	
	printer := PPPPrinter new.
	self preferenceBlock value: printer profile.
	variableName := 
		'joisajfsapodjfposajdfpojsafjpsajfpoasjfdpaspofdjsapojfpoajsfpo'.
	variableNode := PPPVariableNode name: variableName.
	variableNode length: 62.
	returnNode := PPPReturnNode value: variableNode.
	returnNode length: 63.
	
	printer visitReturnNode: returnNode.
	formattedReturn := printer wholeContent.
	
	self assert: '^' , variableName equals: formattedReturn.
	
	variableName := 'joisajfsapodjfposasadfsadfsfjdfpoj'.
	variableNode := PPPVariableNode name: variableName.
	variableNode length: 34.
	firstMessageSelector := 'isjdfisidjfsjdfjposjdfposadfs:'.
	secondMessageSelector := 'dfsjsdpofjspoidjfpsjpfsdjfodsjfojdspof:'.
	firstArgumentNode := PPPVariableNode name: 'sidjfoidsfjdsjfdsoijfoidsj'.
	firstArgumentNode length: 26.
	secondArgumentNode := PPPVariableNode name: 'sdjifoijdsfjapsfjasfdafdsa'.
	secondArgumentNode length: 26.
	messageNode := PPPMessageNode
		receiver: variableNode
		selector: firstMessageSelector , secondMessageSelector
		arguments: { firstArgumentNode . secondArgumentNode }.
	messageNode length: 159.
	returnNode := PPPReturnNode value: messageNode.
	returnNode length: 160.
	
	printer := PPPPrinter new.
	self preferenceBlock value: printer profile.
	printer visitReturnNode: returnNode.
	formattedReturn := printer wholeContent.
	self assert: '^' , variableName , Character cr , Character tab
		, firstMessageSelector , ' ' , firstArgumentNode name , Character cr
		, Character tab , secondMessageSelector , ' ' , secondArgumentNode name equals: 
		formattedReturn