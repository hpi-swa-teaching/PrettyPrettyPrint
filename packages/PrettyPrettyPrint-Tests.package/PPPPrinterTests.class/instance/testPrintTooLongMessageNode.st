testing
testPrintTooLongMessageNode
	
	| variableNode messageNode printer variableName firstMessageSelector 
		secondMessageSelector firstArgumentNode secondArgumentNode 
		shortMessageNode formattedMessage |
	
	printer := PPPPrinter new.
	self preferenceBlock value: printer profile.
	variableName := 'IAmAVeryVeryVeryVeryVeryLongReceiver'.
	variableNode := PPPVariableNode name: variableName.
	variableNode length: 36.
	firstMessageSelector := 'firstPartOfTheMessageSelector'.
	secondMessageSelector := 'secondPartOfTheMessageSelector:'.
	shortMessageNode := PPPMessageNode
		receiver: nil
		selector: firstMessageSelector.
	shortMessageNode length: 29.
	firstArgumentNode := PPPCascadeNode
		receiver: variableNode
		messages: { shortMessageNode . shortMessageNode }.
	firstArgumentNode hasParentheses: true.
	firstArgumentNode length: 97.
	firstArgumentNode needsStructuralLinebreak: true.
	secondArgumentNode := PPPVariableNode name: 'secondArgumentNode'.
	secondArgumentNode length: 18.
	messageNode := PPPMessageNode
		receiver: variableNode
		selector: firstMessageSelector , ':' , secondMessageSelector
		arguments: { firstArgumentNode . secondArgumentNode }.
	messageNode length: 218.
	
	printer visitMessageNode: messageNode.
	formattedMessage := printer wholeContent.
	
	self
		assert: variableName
			, Character cr
				, Character tab
					, firstMessageSelector
						, ': ('
							, variableNode name
								, Character cr
									, Character tab
										, Character tab
											, 
												firstMessageSelector
												, ';'
													, 
														Character cr
														, 
															Character tab
															, 
																Character tab
																, 
																	firstMessageSelector
																	, 
																		')'
																		, 
																			Character cr
																			, 
																				Character tab
																				, 
																					secondMessageSelector
																					, 
																						' '
																						, 
																							secondArgumentNode name
																						equals: 
																							formattedMessage