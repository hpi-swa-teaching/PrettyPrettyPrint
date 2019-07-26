preferences
getPragmaPreferencesFrom: aPPPMethodNode
	
	| parsedPragmas relevantParsedPragmas |
	
	parsedPragmas := self parseAllPragmasFrom: aPPPMethodNode.
	relevantParsedPragmas := self extractRelevantPragmasFrom: parsedPragmas.
	
	^ self pragmasToDict: relevantParsedPragmas