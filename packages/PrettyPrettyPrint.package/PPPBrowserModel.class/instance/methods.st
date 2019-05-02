as yet unclassified
methods

	^ (self selectedClasses gather: [:c | 
		((Compiler evaluate: c) allSelectors) 
			collect: [:s | c asString , '  >>  ' , s asString]])
				sort