as yet unclassified
testBuildingPragmaInstructions

	
	self assert: (PPPPragmaHandler new extractRelevantPragmasFrom: self dummyAst) equals: self relevantParsedPragmas.