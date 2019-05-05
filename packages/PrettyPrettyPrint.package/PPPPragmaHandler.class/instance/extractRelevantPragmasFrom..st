as yet unclassified
extractRelevantPragmasFrom: anOrderedCollection
	| relevantPragmas |

	relevantPragmas := anOrderedCollection select: [:pragma |
		pragma arguments notEmpty 
		and: [pragma arguments first notEmpty
		and: [pragma arguments first first = 'PrettyPrint:']]].

	^relevantPragmas