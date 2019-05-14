as yet unclassified
parseAllPragmasFrom: aPPPMethodNode

	| allPragmas parsedPragmas |
	allPragmas := aPPPMethodNode getAllPragmas.
	parsedPragmas := allPragmas collect: [:pragma | self parsePragma: pragma].
	
	^parsedPragmas