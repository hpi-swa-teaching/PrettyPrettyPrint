as yet unclassified
testPragmaParsing

	| parsedPragmas |
	parsedPragmas := PPPPragmaHandler new parseAllPragmasFrom: self dummyAst.
	self assert: self allParsedPragmas equals: parsedPragmas
	