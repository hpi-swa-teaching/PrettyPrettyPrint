as yet unclassified
methods

	^ (self selectedClasses gather: [:c | 
		((Compiler evaluate: c) allSelectors) 
			collect: [:s | s asString , ' (' , c asString , ')']]) 
				sort