as yet unclassified
testPragmaFilter

	self assert: (PPPPragmaHandler new extractRelevantPragmasFrom: self dummyAst) equals: self relevantParsedPragmas.