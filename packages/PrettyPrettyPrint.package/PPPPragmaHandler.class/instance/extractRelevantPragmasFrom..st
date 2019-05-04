as yet unclassified
extractRelevantPragmasFrom: aPPPMethodNode

	| allPragmas parsedPragmas relevantPragmas |
	allPragmas := aPPPMethodNode getAllPragmas.
	parsedPragmas := allPragmas collect: [:pragma | self parsePragma: pragma].
	relevantPragmas := parsedPragmas select: [:pragma |
		pragma arguments first first = 'PrettyPrint:'].
	
	
	^relevantPragmas