as yet unclassified
testPragmasToDict
	
	| pragmaDict |
	
	pragmaDict := PPPPragmaHandler new pragmasToDict: self relevantParsedPragmas.
	self assert: self relevantPragmasDict equals: pragmaDict