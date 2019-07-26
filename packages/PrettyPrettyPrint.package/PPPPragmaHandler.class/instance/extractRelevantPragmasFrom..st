as yet unclassified
extractRelevantPragmasFrom: anOrderedCollection
	
	| relevantPragmas |
	
	relevantPragmas := anOrderedCollection
		select: [ :pragma |
			pragma selector = 'PrettyPrint:option:' ].
	
	^relevantPragmas